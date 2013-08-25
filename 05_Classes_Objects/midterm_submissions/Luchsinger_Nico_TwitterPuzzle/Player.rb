class Player

	attr_accessor :name, :score

	def initialize
		puts "Please enter your name:"
		@name = gets.chomp
		@score = 0
	end

	def increase_score
		@score += 1
	end

	def decrease_score
		@score -= 1
	end

end