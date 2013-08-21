require 'json'
require 'rest_client'
require_relative 'news'
require_relative 'awards'

class RemoteSource
  def self.get_news
    res = JSON.load(RestClient.get("http://chroniclingamerica.loc.gov/newspapers.json"))
    res["newspapers"].map do |news|
      News.new news["state"], news["title"], news["url"]
    end
  end

  def self.get_awards
    res = JSON.load(RestClient.get("http://chroniclingamerica.loc.gov/awardees.json"))
    res["awardees"].map do |awards|
      Awards.new awards["name"], awards["url"]
    end
  end

end