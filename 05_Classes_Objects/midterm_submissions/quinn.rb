require 'json'
require 'rest-client'
#require_relative 'twitter_results'

class Quinn
  def self.get
    res = Twitter.search("Christine Quinn", :count => 10, :result_type => "recent").collect do |tweet|
  		"#{tweet.user.screen_name}: #{tweet.text}"
  	end
  end
end
