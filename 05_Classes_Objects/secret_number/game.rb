class Game
	attr_accessor :number, :counter, :guesses, :answer 
		def initialize(number, counter, guesses, answer)
		@number = number
		@counter = counter
		@guesses = guesses
		@answer = answer
end

	def guess_status
		if guess