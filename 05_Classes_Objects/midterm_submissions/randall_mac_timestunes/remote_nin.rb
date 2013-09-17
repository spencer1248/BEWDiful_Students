require 'json'
require 'rest-client'
# require 'pry'

class RemoteNin
  def self.get
    res = JSON.load(RestClient.get('http://api.nytimes.com/svc/search/v1/article?format=json&query=nine+inch+nails&fields=title%2C+byline%2C+date%2C+url&rank=newest&api-key=34e2543d16a4b502cbd7ada53698b1c5:14:10616717'))
    res["results"].map do |story|
      Story.new(story['title'], story['byline'], story['date'], story['url'])
    end
  end
end
