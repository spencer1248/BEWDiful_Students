class CalcUp
	def calc_upvotes(title, category)

   upvotes = 1

    if (title + category).downcase.include? "miami"
     upvotes *= 0

    elsif (title +';;'+ category).downcase.include? "knicks"
     upvotes *= 100

    else
    	upvotes
  
    end

end
end
