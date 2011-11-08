require 'rubygems'
require 'nokogiri'
require 'open-uri'

class TvShow
  attr_accessor :name, :episode_number, :filename, :result
  def initialize(filename)
    @filename = filename
  end

  def name
    @name ||= @filename.split(/[Ss]\d{2}[Ee]\d{2}/)[0].gsub(/[-_.]/, ' ').strip
  end

  def episode_number
    @episode_number ||= @filename.sub(/.*(S\d{2}E\d{2}).*/, "\\1")
  end

  def url
    "https://www.betaseries.com/episode/#{name.gsub(/ /, '').downcase}/#{episode_number.downcase}"
  end

  def page
    @page ||= Nokogiri::HTML(open(url))
  end
  def links
    unless @links
      @links = {}
      page.css("ul.srt a").select{|e| e.children.first.content != ""}.each {|e| links.merge!({e.children.first.content => e.attributes["href"].value})}
    end
    @links
  end

  def result
    unless @result
      results = links.to_a.select{|e| Regexp.new(warez_group) =~ e[0].downcase}
      if results.select{|e| /fr/ =~ e[0].downcase}.count > 0
        results = results.select{|e| /fr/ =~ e[0].downcase}
      end
      @result ||= results.first.last
    end
  end

  def warez_group
    @warez_group ||= @filename.split(/[Ss]\d{2}[Ee]\d{2}/)[1].gsub(/[\-_.]/, ' ').downcase.gsub(/hdtv|xvid|720p|x264|avi|mkv/, '').split(/\d{4,}/)[0].strip.split("[")[0].strip
  end
end
