class Digg
	def self.get_stories
	  stories      =[]
		digg_response=RestClient.get('http://digg.com/api/news/popular.json')
	  digg_data    =JSON.load (digg_response) 
	    
		digg_data['data']['feed'].each do |article|

		  data=article['content']
		  title=data["title"]
		  category=data["kicker"]

		  story=Story.new(title)
		  stories << story
		end

		stories
	end

end


