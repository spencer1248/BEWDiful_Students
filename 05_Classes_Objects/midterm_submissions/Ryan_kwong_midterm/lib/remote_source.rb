class RemoteSource
	
  def self.get

  	upvotes = CalcUp.new
    res = JSON.load(RestClient.get('http://api.espn.com/v1/sports/basketball/nba/news/headlines?apikey=pbus9bmhjwnf2vmt8by8j5ep'))
    res["headlines"].map do |story|
       Story.new(title = story["headline"], category = story["title"], upvotes.calc_upvotes(title, category))

    end
  end

  def add_remote_stories

  	RemoteSource.get.each do |story|
    StoryBoard.add_story story 
 
  	end
  end

end
