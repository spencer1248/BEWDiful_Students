class Tweet

	attr_reader :text, :user 	

	def initialize(text, user)
		@text = text
		@user = user
	end
end