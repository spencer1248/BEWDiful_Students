require_relative 'game'

class Main
	def initialize
		game = Game.new
		game.run
	end
end

Main.new