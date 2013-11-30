require_relative 'tweetsearch'

class Main
	def initialize
		tweetsearch = Tweetsearch.new
		tweetsearch.run
	end
end

Main.new