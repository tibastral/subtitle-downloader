#/bin/sh

wget `./get_srt_url.rb "$1"`
unzip *.zip
rm *.zip
