require 'meta-spotify' # meta-spotify gem: Ruby wrapper for the spotify API
require_relative 'ArtistSearch'
require_relative 'AlbumsByArtistSearch'

class Game

	def initialize
		@artist_search_term = nil
		@artist_search_result = nil
		@artist_index = nil
		@album_search_result = nil
		@album_index = nil
		@is_running = false
	end

	def run
		welcome_user
		show_description
		start_game
	end

	def start_game
		@is_running = true

		while is_running?
			puts
			puts "------------------------------"

			start_new_search
			@is_running = continue_to_run?
		end

		puts
		puts "Goodbye."
		puts
	end

	def start_new_search
		@artist_search_term = get_artist_search_term
		@artist_search_result = ArtistSearch.new(MetaSpotify::Artist.search(@artist_search_term))

		if show_artist_search_results
			@artist_index = get_artist_index
			artist_uri = @artist_search_result.get_artist_uri_by_index(@artist_index)

			@album_search_result = AlbumsByArtistSearch.new(MetaSpotify::Artist.lookup(artist_uri, :extras => 'album'))
			
			if show_album_search_results
				@album_index = get_album_index
				album_uri = @album_search_result.get_album_uri_by_index(@album_index)

				launch_spotify_with_album(album_uri, @artist_search_result.get_artist_name_by_index(@artist_index), @album_search_result.get_album_name_by_index(@album_index))

			end
		end
	end

	def show_artist_search_results
		puts
		puts "Your search for '#{@artist_search_term}' returned #{@artist_search_result.total_results} results."

		if @artist_search_result.total_results > 0
			@artist_search_result.to_s
		else
			false
		end
	end

	def show_album_search_results
		puts
		puts "#{@artist_search_result.get_artist_name_by_index(@artist_index)} has #{@album_search_result.total_results} albums on Spotify. "

		if @album_search_result.total_results > 0
			@album_search_result.to_s
		else
			false
		end
	end

	def launch_spotify_with_album(album_uri, artist_name, album_name)
		puts "Now playing #{album_name} by #{artist_name} on Spotify!"
		system("open #{album_uri}")
	end

	def get_artist_search_term
		puts
		print "Please enter an artist's name: "

		get_user_input.to_s
	end

	def get_artist_index
		puts
		print "Enter the number of the artist listed above (1 - #{@artist_search_result.total_results}) whose albums you'd like to view: "

		index = get_user_input.to_i

		if index > 0 && index <= @artist_search_result.total_results
			index-=1
		else
			puts
			puts 'Unexpected input. '
			get_artist_index
		end
	end

	def get_album_index
		puts
		print "Select the number of the album listed above (1 - #{@album_search_result.total_results}) that you'd like to play in the Spotify client: "

		index = get_user_input.to_i
		if index > 0 && index <= @artist_search_result.total_results
			index-=1
		else
			puts
			puts 'Unexpected input. '
			get_album_index
		end
	end

	def get_user_input
		gets.chomp
	end

	def continue_to_run?
		puts
		print "Would you like to search again? 'yes' or 'no': "
		input = gets.chomp

		case input
		when 'yes'
			true
		when 'no'
			false
		else
			puts
			puts 'Unexpected input.'
			continue_to_run?
		end
	end

	def welcome_user
		puts "\e[H\e[2J"
		puts "Welcome to the super simple Spotify browser!"
		puts "Author: Buster Kapila"
		puts
		puts "------------------------------"
	end

	def show_description
		puts
		puts "Browse albums on Spotify by artist." 
		puts "Select an album and launch the Spotify player."
		puts "You must have the Spotify client installed to hear your music."
		puts "Let's get started!"
	end

	def is_running?
		@is_running
	end
end