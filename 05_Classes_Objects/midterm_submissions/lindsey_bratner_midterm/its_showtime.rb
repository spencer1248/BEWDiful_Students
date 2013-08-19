require_relative 'lib/build_movie_cue'

def start_movie_cue
	puts "It's Showtime!  It's Showtime allows you to create a cue of current top movies you want to watch next. 
	\nMovie watcher, what is your name?"
	input = gets.chomp.capitalize
	user = BuildMovieCue.new(input)
end

start_movie_cue