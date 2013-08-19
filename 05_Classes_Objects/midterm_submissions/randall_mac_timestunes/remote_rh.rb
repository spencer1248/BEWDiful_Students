require 'json'
require 'rest-client'
require_relative 'new_stories'

class RemoteRh
  def self.get
    res = JSON.load(RestClient.get('http://api.nytimes.com/svc/search/v1/article?format=json&query=radiohead&fields=title%2C+byline%2C+date%2C+url&rank=newest&api-key=34e2543d16a4b502cbd7ada53698b1c5:14:10616717'))
    res["results"].map do |story|
      NewStories.new story 
    end
  end
end
