require 'json'
require 'rest-client'
#require_relative 'twitter_results'

class Weiner
  def self.get
    res = Twitter.search("Anthony Weiner", :count => 10, :result_type => "recent").collect do |tweet|
  		"#{tweet.user.screen_name}: #{tweet.text}"
		end
	end
end		