require 'json'
require 'rest-client'
require_relative 'tweet'

class RemoteSource
  def self.get
    res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
    res["hot"].map do |story|
      Tweet.new tweet["title"], story["channel"]
    end
  end
end
