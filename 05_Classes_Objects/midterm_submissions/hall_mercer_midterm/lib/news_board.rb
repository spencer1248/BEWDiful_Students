class NewsBoard
  @@newspapers = []
  
  def self.add_news(news)
    @@newspapers << news
  end

  def self.newspapers_state
	@@newspapers.map do |news|
	  	"State: #{news.state}"
	end
  end
	
  def self.newspapers_title
	@@newspapers.map do |news|
	  	"Publication: #{news.title}"
	end
  end
    
  def self.newspapers_url
	@@newspapers.map do |news|
	  	"Website: #{news.url}"
	end
  end

end