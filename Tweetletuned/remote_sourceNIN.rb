require 'json'
require 'rest-client'
require_relative 'tweet'

class RemoteSourceNIN
  def self.get
    res = JSON.load(RestClient.get('https://api.twitter.com/1.1/search/tweets.json?q=Nine%20Inch%20Nails&src=typd'))
    res["results"][0..9].map do |tweet|
      Tweet.new tweet["text"]
    end
  end
end