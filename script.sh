#!/bin/bash

URL="https://sample-videos.com/video123/mp4/240/big_buck_bunny_240p_1mb.mp4"

wget -q --random-wait $URL
LSMAIN=$(ls --ignore=*.sh)
FILENAME=$(echo "$LSMAIN")
wget -q --random-wait https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip
unzip -qq -o uplink_linux_amd64.zip
sudo install uplink /usr/local/bin/uplink
uplink access import main .github/workflows/accessgrant.txt
uplink cp $FILENAME sj://root/NSFW/
uplink share --url --not-after=none sj://root/NSFW/$FILENAME | grep -i "link.storjshare" | cut -b 13-
