require 'json'
require 'rest-client'
require_relative 'tweet'

class RemoteSourceQOTSA
  def self.get
    res = JSON.load(RestClient.get('https://api.twitter.com/1.1/search/tweets.json?q=Queens%20of%20the%20Stone%20Age&src=typd'))
    res["results"][0..9].map do |tweet|
      Tweet.new tweet["text"]
    end
  end
end