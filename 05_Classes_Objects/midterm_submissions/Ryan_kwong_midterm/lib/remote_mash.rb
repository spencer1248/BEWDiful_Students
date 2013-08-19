class RemoteMash
	
  def self.get

  	upvotes = CalcUp.new
    res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
    res["hot"].map do |story|
       Story.new(title = story["title"], category = story["excerpt"], upvotes.calc_upvotes(title, category))

    end
  end

  def add_remote_stories_mash

  RemoteMash.get.each do |story|
    StoryBoard.add_story story 
 
  	end
  end

end
