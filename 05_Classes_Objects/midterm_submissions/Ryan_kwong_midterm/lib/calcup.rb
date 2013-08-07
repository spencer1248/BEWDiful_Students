class CalcUp
	def calc_upvotes(title, category)

   upvotes = 1

    if %w(miami heat boston celtics dallas mavericks houston rockets 
    	clippers cleveland cavaliers).any? {|str| (title + category).downcase.include? str}
     upvotes *= -1000

    elsif %w(york knicks brooklyn nets san antonio spurs
    	lakers golden state warriors indiana pacers oklahoma 
    	city thunder philadelphia sixers chicago bulls).any? {|str| (title + category).downcase.include? str}
     upvotes *= 100

	elsif %w(minnesota timberwolves memphis grizzles orleans pelicans
		washington wizards sacramento kings atlanta hawks orlando magic phoenix suns 
		charolette bobcats denver nuggets milwaukee bucks utah jazz detroit pistons
		portland trailblazers toronto raptors).any? {|str| (title + category).downcase.include? str}
	 upvotes *=50

    else
    	upvotes
  
    end

end
end
