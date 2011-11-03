#!/usr/bin/env ruby

# $:.unshift File.join(File.dirname(__FILE__),'..', 'app', 'models')

$:.unshift File.join(File.dirname(__FILE__), 'app', 'models')

require "tv_show"

`wget -P ~/Downloads/srt "#{TvShow.new(ENV['TR_TORRENT_NAME']).result}"`

`unzip ~/Downloads/srt/*.zip -d ~/Downloads/srt`

`rm ~/Downloads/srt/*.zip`
