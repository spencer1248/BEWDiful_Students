class Player
	attr_accessor :current_guess, :name, :total_guesses

	def initialize(name)
        @current_guess = nil
		@name = name
        @total_guesses = 0
	end

    def guess!(guess)
        @current_guess = guess
        @total_guesses += 1
    end

    def reset_guesses
        @total_guesses = 0
        @current_guess = nil
    end
end