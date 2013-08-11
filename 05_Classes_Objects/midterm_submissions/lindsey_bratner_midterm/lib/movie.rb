class Movie
	attr_reader :type, :title, :critics_score, :audience_score, :synopsis

	def initialize(type, title, critics_score, audience_score, synopsis)
  		@type = type
    	@title = title
    	@critics_score = critics_score
    	@audience_score = audience_score
    	@synopsis = synopsis
 	end

	def to_s
    	puts "Type: #{@type}, Title: #{@title},   Critics Score: #{@critics_score},   Audience Score: #{@audience_score}"
 	 end

end
