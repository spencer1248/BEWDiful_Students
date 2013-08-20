require 'rest_client'
require 'json'
require_relative 'title'

class Espn
	def self.get         #class method
		espn_response = JSON.load(RestClient.get('http://api.espn.com/v1/sports/basketball/nba/news/headlines?apikey=j6p2ajf89dqfqusn4pzvs6uc'))
		espn_response['headlines'].map do |child|
			Title.new child['title'], child['source']     #this Espn class-method .get creates a new instance of Title class with values 'title' and 'byline' as parameters.
		end    																#instance of Title class created with parameters title and byline coinciding with pulling of those values?
	end                                               
end

############

require 'rest_client'
require 'json'
require_relative 'title'     #keep in file title, but now refer to class Rotten

class Rotten1
	def self.get         #class method
		res = JSON.load(RestClient.get('http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?apikey=8quwxmmbw3cmy6p9yaybcdpm'))
		res['movies'].map do |baby|
			Rotten.new baby['title'], baby['critics_consensus']     #this Espn class-method .get creates a new instance of Title class with values 'title' and 'byline' as parameters.
		end    																#instance of Title class created with parameters title and byline coinciding with pulling of those values?
	end                                               
end

############
############