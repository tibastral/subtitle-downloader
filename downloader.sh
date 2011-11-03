#/bin/sh

wget `./get_srt_url.rb "$TR_TORRENT_NAME"`
unzip *.zip
rm *.zip
