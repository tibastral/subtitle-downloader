Feature: Get data from filename
  In order to use metadata from a filename
  As a command line interface
  I want to be able to parse a filename

  Scenario: find dexter
    When I parse the torrent "Dexter_S06E05_720p_HDTV_X264-DIMENSION_[eztv].6784543.TPB.torrent" to a new tvshow
    Then the name of my movie should be "Dexter"
    Then the episode number should be "S06E05"
    Then the url should be "https://www.betaseries.com/episode/dexter/s06e05"
  
  Scenario: find House
    When I parse the torrent "House_S06E07_720p_HDTV_X264-DIMENSION_[eztv].6784543.TPB.torrent" to a new tvshow
    Then the name of my movie should be "House"
  
  Scenario: find Doctor House
    When I parse the torrent "Doctor_House_S06E07_720p_HDTV_X264-DIMENSION_[eztv].6784543.TPB.torrent" to a new tvshow
    Then the name of my movie should be "Doctor House"
    Then the episode number should be "S06E07"
    Then the warez group should be "dimension"
  
  Scenario: find Doctor House
    When I parse the torrent "Doctor_House_S06E07_720p_HDTV_X264-DIMENSION_[eztv].6784543.TPB.torrent" to a new tvshow
    Then the name of my movie should be "Doctor House"
    Then the warez group should be "dimension"
  
  Scenario: find Desperate
    When I parse the torrent "Desperate_Housewives_S08E05_HDTV_XviD-LOL_[eztv].6766652.TPB.torrent" to a new tvshow
    Then the name of my movie should be "Desperate Housewives"
    Then the url should be "https://www.betaseries.com/episode/desperatehousewives/s08e05"
    Then the warez group should be "lol"
    Then the page links should contain "Desperate Housewives_8x05_HDTV.LOL.en.zip"
    Then the result should be "https://www.betaseries.com/srt/358357"
  
  Scenario: find Dexter
    When I parse the torrent "Dexter_S06E05_720p_HDTV_X264-DIMENSION_[eztv].6784543.TPB.torrent" to a new tvshow
    Then the name of my movie should be "Dexter"

  Scenario: find Weeds
    When I parse the torrent "Weeds.S07E13.HDTV.XviD-ASAP.avi" to a new tvshow
    Then the name of my movie should be "Weeds"
    Then the warez group should be "asap"
    Then the episode number should be "S07E13"
    Then the result should be "https://www.betaseries.com/srt/355175"
