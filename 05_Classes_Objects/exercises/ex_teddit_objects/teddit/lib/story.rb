class Story
	attr_reader :title, :channel

	def initialize(title,channel)
		@title = title
		@channel = channel
		@upvotes = 1
	end

	def to_s
		"Story: #{title}, Category: #{channel}, Current Upvotes: #{@upvotes} "
	end

	def upvote
		@upvotes += 1
	end

	def downvote
		@upvotes -= 1
	end
end
