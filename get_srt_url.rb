#!/usr/bin/env ruby

require "./app/models/tv_show"

puts TvShow.new(ARGV[0]).result
