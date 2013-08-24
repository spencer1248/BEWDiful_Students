class Title

	attr_accessor :title, :source, :upvote    #why can't I use attr_accessor instead of attr_reader, doesn't accessor do read and write?

	def initialize(title, source)   #why am I not passing upvote as an argument for initialize?
		@title = title
		@source = source
		@upvote = 0
	end

	def upvote        #what is this actually doing here? it's not calculating upvotes based on any criteria?
		if title.include?("LeBron")
		@upvote += 8    #actually, every time an array of stories is being added to headlineboard, it receives 1 vote and if it already received a vote, it gets 1 additional.
		else
		@upvote += 1
	end
	end

	def downvote
		@upvote -= 1
	end

end

##############

class Rotten

	attr_accessor :title, :critics_consensus, :upvote

	def initialize(title, critics_consensus)
		@title = title
		@critics_consensus = critics_consensus
		@upvote = 0
	end

	def upvote
		if title.include?("The")
		@upvote += 8
	else
		@upvote += 1
	end
	end

end

############
############