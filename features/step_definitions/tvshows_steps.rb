When /^I parse the torrent "([^"]*)" to a new tvshow$/ do |filename|
  @tvshow = TvShow.new(filename)
end

Then /^the name of my movie should be "([^"]*)"$/ do |name|
  @tvshow.name.should == name
end

Then /^the episode number should be "([^"]*)"$/ do |episode_number|
  @tvshow.episode_number.should == episode_number
end

Then /^the url should be "([^"]*)"$/ do |url|
  @tvshow.url.should == url
end

Then /^the page links should contain "([^"]*)"$/ do |srt_filename|
  @tvshow.links.has_key?(srt_filename).should be(true)
end

Then /^the result should be "([^"]*)"$/ do |res|
  @tvshow.result.should == res
end

Then /^the warez group should be "([^"]*)"$/ do |warez_group|
  @tvshow.warez_group.should == warez_group
end

Then /^debug$/ do
  debugger
  puts 'debugged'
end
