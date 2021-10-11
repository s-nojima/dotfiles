DOMAIN=${1}

# 対象のドメインの有効期限を取得(GMT)
## (2018/03/11 EXPIREとなっていたのをEXPIREDに修正)
EXPIRED=`openssl s_client -connect "${DOMAIN}":443 < /dev/null 2> /dev/null | openssl x509 -text | grep "Not After" | awk -F ' : ' '{print $2}'`

# 有効期限をUnixTimestamp形式で取得する(GMT)
EXPIRED_UNIXTIME=`date '+%s' -d "\`echo $EXPIRED\`"`

# 取得した有効期限はGMTであるため、日本標準時間のJSTに変更する
#EXPIRED_UNIXTIME=`expr $EXPIRED_UNIXTIME - 32400`

date --date "@${EXPIRED_UNIXTIME}"

# あと何日かを取得するために現在の時間をUnixTimestamp形式で取得する
NOW_UNIXTIME=`date "+%s"`

# 有効期限から今の時間を引くことで、残り時間をUnixTimestmap形式で計算する
DIFF_SECOND=`expr $EXPIRED_UNIXTIME - $NOW_UNIXTIME`

# 1日は、60秒*60分*24時間=86400秒
ONE_DAY_SECOND=86400

# 残り日数を取得する
DAYS=`expr $DIFF_SECOND / $ONE_DAY_SECOND`

# 残りの有効期限を表示
echo "残り有効期限は、${DAYS}日です。"
