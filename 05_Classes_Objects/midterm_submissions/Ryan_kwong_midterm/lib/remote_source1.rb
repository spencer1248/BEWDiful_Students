require 'json'
require 'rest-client'
require_relative 'calcup'
require_relative 'story'



class RemoteMash
	
  def self.get

  	upvotes = CalcUp.new
    res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
    res["hot"].map do |story|
       Story.new(title = story["title"], category = story["excerpt"], upvotes.calc_upvotes(title, category))

    end
  end
end
