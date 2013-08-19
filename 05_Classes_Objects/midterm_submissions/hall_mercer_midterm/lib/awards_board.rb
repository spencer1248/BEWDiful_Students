class AwardsBoard
  @@winners = []
  
  def self.add_awards(awards)
    @@winners << awards
  end

  def self.winners_name
	  @@winners.map do |awards|
	     "University: #{awards.name}"
	  end
  end
	
  def self.winners_url
    @@winners.map do |awards|
       "Website: #{awards.url}"
    end
  end

end