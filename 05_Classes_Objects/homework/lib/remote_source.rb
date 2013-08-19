#James Naadjie-Midterm Project
#describes RemoteSource class, which is responsible for getting news from Remote API's
require 'json'
require 'rest-client'
require_relative 'story' #creates a link to the Story class.


class RemoteSource
  def self.get
    res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
    res["hot"].map do |story|
      Story.new story["title"], story["channel"]
    end
  end

  def self.get_digg
    res = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))
    res['data']['feed'].map do |story|
      Story.new story['content']["title"], story['content']['tags'].first['name']
    end
  end
end
