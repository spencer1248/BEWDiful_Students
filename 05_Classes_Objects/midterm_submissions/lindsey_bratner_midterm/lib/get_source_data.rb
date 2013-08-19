require 'json'
require 'rest-client'

class GetSourceData

	def self.get(source)
		@source = source
		if @source == 1
			@source_data = RestClient.get('http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?apikey=dvm799jch8pyshmhf2k2mxj6&page_limit=10')
			@data_type = "In Theaters Now"
		elsif @source == 2
			@source_data = RestClient.get('http://api.rottentomatoes.com/api/public/v1.0/lists/dvds/top_rentals.json?apikey=dvm799jch8pyshmhf2k2mxj6&limit=10')
			@data_type = "Top DVD Rental"
		end
  		movie_data = JSON.load @source_data
  		movie_data['movies'].map do |movie|
 		   Movie.new("#{@data_type}", movie['title'], movie['ratings']['critics_score'], movie['ratings']['audience_score'], movie['synopsis'])
  		end
  	end
  
end