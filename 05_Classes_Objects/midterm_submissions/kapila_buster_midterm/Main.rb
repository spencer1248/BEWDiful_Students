# BEWD: Midterm Homework
# By Buster Kapila
# Simple Spotify album browser.  Uses the meta-spotify gem to hook into
# the Spotify API. Search for arists, then albums by that artist,
# and launch the Spotify player to hear an album.  


require_relative 'Game'

class Main
	def initialize
		game = Game.new
		game.run
	end
end

Main.new