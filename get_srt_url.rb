#!/usr/bin/env ruby

# $:.unshift File.join(File.dirname(__FILE__),'..', 'app', 'models')

$:.unshift File.join(File.dirname(__FILE__), 'app', 'models')

require "tv_show"


TvShow.new(ENV['TR_TORRENT_NAME']).results.each do |result|
  `/usr/local/bin/wget -P ~/Downloads/srt "#{result}"`
end


Dir.chdir("/Users/Thibaut/Downloads/srt")
Dir.glob("*.zip").each do |zipfile|
  `unzip '#{zipfile}'`
  File.delete(zipfile)
end

Dir.glob("*.ass").each do |toremove|
  # p toremove
  File.delete(toremove)
end

Dir.glob("*.NoTAG.srt").each do |toremove|
  # p toremove
  File.delete(toremove)
end
  # File.delete("*.ass")
# File.delete("*.NoTAG.srt")

# `unzip ~/Downloads/srt/*.zip -d ~/Downloads/srt`

# `rm ~/Downloads/srt/*.zip`
