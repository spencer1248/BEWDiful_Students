class Story

  attr_reader :story, :byline, :date, :url
  def initialize(story, byline, date, url)
    @story = story
    @byline = byline
    @date = date
    @url = url 
  end

end

