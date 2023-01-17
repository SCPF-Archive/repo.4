#!/bin/bash

URL=""

wget -q --random-wait $URL
LSMAIN=$(ls * --ignore=*.sh)
FILENAME=$(echo "$LSMAIN")
#wget -q --random-wait https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip
#unzip -qq -o uplink_linux_amd64.zip
#sudo install uplink /usr/local/bin/uplink
#uplink access import main accessgrant.txt
#uplink cp downloads/$FILENAME sj://root/NSFW/
#uplink share --url --not-after=none sj://root/NSFW/$FILENAME | grep -i "link.storjshare" | cut -b 13-
