#!/bin/sh

sleep 5

conky -c ~/.conky/conky_redc &
conky -c ~/.conky/conky_redc_net &
 
exit
