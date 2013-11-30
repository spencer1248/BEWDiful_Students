require_relative './puzzle'

class Puzzles

	attr_accessor :puzzles, :query

	def initialize
		@puzzles = []
	end

	#Creates an array of puzzles based on the array of tweets. Removes puzzles that do not have valid_tweets from the array.
	def build_puzzles_array(tweets)
		@query = tweets.query
		tweets.tweets.each do |tweet|
			@puzzles << Puzzle.new(tweet, query)
		end
		@puzzles.each do |puzzle|
			unless puzzle.valid_tweet
				@puzzles.slice!(@puzzles.index(puzzle))
			end
		end
	end
end


