require_relative "./game"

class Runner
	def self.start
		game = Game.new
		game.run
	end
end

Runner.start
