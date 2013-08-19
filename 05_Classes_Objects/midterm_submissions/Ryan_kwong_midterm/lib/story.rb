class Story 
	attr_accessor :title, :category, :upvotes

	def initialize (title, category, upvotes)
		@title = title
		@category = category
		@upvotes = upvotes
	end

end
