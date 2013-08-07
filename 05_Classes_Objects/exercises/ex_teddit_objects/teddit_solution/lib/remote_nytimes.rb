require 'json'
require 'rest-client'
require_relative 'story'

# class RemoteNytimes
#   def self.get
#     res = JSON.load(RestClient.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/international/1.json?&offset=40&api-key=8e13411e5c47a8593e2728d9566c304f:16:67958119'))
#     res["results"].map do |child|
#       Story.new child["title"]
#     end
#   end
# end

class RemoteNytimes
  def self.get
    res = JSON.load(RestClient.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/international/1.json?&offset=40&api-key=8e13411e5c47a8593e2728d9566c304f:16:67958119'))
    res["results"].map.with_index do |child,index|
      
      puts child["title"] "#{index}"
      
    end
  end
end

puts RemoteNytimes.get
