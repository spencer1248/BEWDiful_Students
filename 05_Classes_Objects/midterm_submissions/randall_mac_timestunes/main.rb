require_relative 'timestunes'

class Main
	def initialize
		timestunes = Timestunes.new
		timestunes.run
	end
end

Main.new