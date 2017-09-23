#!/bin/sh

sleep 5

conky -c ~/dotfiles/conky_redc &
conky -c ~/dotfiles/conky_redc_net &
conky -c ~/dotfiles/conky_redc_rss &
 
exit
