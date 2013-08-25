require_relative './TwitterAuthenticate'
require_relative './Tweet'
require 'Twitter'

class Tweets

	attr_reader :tweets, :query

	def initialize(query)
		@tweets = []
		@query = query
		build_tweets_list(search(query))
	end

	#Gets popular tweets based on search term entered by user. Popular chosen instead of recent to increase chances that tweets are in English.
	def search(query)
		Twitter.configure do |config|
		  config.consumer_key = TwitterAuthenticate.CONSUMER_KEY
		  config.consumer_secret = TwitterAuthenticate.CONSUMER_SECRET
		  config.oauth_token = TwitterAuthenticate.OAUTH_TOKEN
		  config.oauth_token_secret = TwitterAuthenticate.OAUTH_SECRET
		end
		Twitter.search(query, options = {result_type: 'popular'}).statuses
	end

	#Builds array of tweets received
	def build_tweets_list(res)
		res.each do |tweet|
			@tweets << Tweet.new(tweet.full_text, tweet.from_user)
		end
	end
end