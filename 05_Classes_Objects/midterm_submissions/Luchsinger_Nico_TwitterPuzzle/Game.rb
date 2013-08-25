require_relative './tweets'
require_relative './tweet'
require_relative './puzzles'
require_relative './player'
require 'colorize'

class Game

	NUMBER_OF_PASSES = 5
	NUMBER_OF_HINTS = 5
	PASS_COMMAND = '*pass'
	HINT_COMMAND = '*hint'

	def initialize
		@is_running = false
		@another_game = true
	end

	#Runs trough all methods to set up the game, including getting data from Twitter and building the puzzles.
	def set
		@player = Player.new
		settings 
		@newpuzzles = Puzzles.new
		@newpuzzles.build_puzzles_array(@res)
	end

	#Gets data from Twitter based on user input, and asks for difficulty level.
	def settings
		@res = Tweets.new(search_term)
		@level = ""
		until @level == "1" || @level == "2"
			puts "Choose your level: [1] for easy, [2] for hard."
			@level = gets.chomp
		end
	end

	#Asks for search term and ensures that only one word is entered
	def search_term
		valid = false
		until valid
			puts "Enter your search term here:"
			search = gets.chomp
			if search.include?(" ")
				valid = false
				puts "You may only enter one search term"
			else
				valid = true
			end
		end
		search
	end 

	# Runs the game
	def run
		welcome
		rules
		while another_game?
			set
			@rounds = @newpuzzles.puzzles.count
			@round = 0
			@passes = 0
			@hints = 0
			@is_running = true
			while is_running?
				play_round
				@round += 1
				continue_to_run?
			end
			end_of_game
			continue_to_play?
		end
	end

	#Structures one round of the game
	def play_round
		@current_puzzle = @newpuzzles.puzzles[@round]
		show_puzzle
		guess
		puts "Your current score is: #{@player.score.to_s.red}"
		puts "\n"
	end

	#Asks for a user guess, and takes action depending on input
	def guess
		puts "What is the missing word?"
		answer = gets.chomp
		if answer.downcase == @current_puzzle.ommitted.downcase
			puts "That is correct!"
			@player.increase_score
		elsif answer.downcase == PASS_COMMAND
			pass
		elsif answer.downcase == HINT_COMMAND
			hint
		else
			correct_answer
			@player.decrease_score
		end
	end

	#Behavior if user decides to pass on answering
	def pass
		if @passes < NUMBER_OF_PASSES
			@passes += 1
			correct_answer
			puts "You have #{NUMBER_OF_PASSES - @passes} passes left."
		else
			puts "I'm sorry, you don't have any passes left."
			correct_answer
			@player.decrease_score
		end
	end

	#Behavior if user decides to ask for a hint
	def hint
		if @hints < NUMBER_OF_HINTS
			@hints += 1
			puts "Here is a hint: The first letter of the missing word is: #{@current_puzzle.ommitted[0].upcase.red}"
			guess
		else
			puts "You don't have any hints left."
			correct_answer
			@player.decrease_score
		end
	end

	#Checks if the game is still running
	def is_running?
		@is_running
	end

	#Decides if there are more rounds to play
	def continue_to_run?
		if @round == @rounds
			@is_running = false
		end
	end

	def another_game?
		@another_game
	end

	def continue_to_play?
		puts "Would you like to play another game? (y/n)"
		answer = gets.chomp
		if answer.downcase == "y"
			@another_game = true
		else
			@another_game = false
		end
	end

	#Displays the correct answer
	def correct_answer
		puts "The correct answer was: #{@current_puzzle.ommitted.upcase}"
		puts "Here is the entire tweet: #{@current_puzzle.text}"
	end

	#Displays the puzzle
	def show_puzzle
		if @level == "1"
			marker = "[Missing word - #{@current_puzzle.ommitted.length} letters]"
		elsif @level == "2"
			marker = "[Missing word]"
		end
		puts "#{@current_puzzle.user} tweets:"
		puts "#{@current_puzzle.front_string} #{marker.red} #{@current_puzzle.back_string}"
		puts "\n"
	end

	#End of game message
	def end_of_game
		puts "\n"
		puts "Thank you for playing, #{@player.name}!"
		puts "You have played #{@rounds} rounds, and your total score is: #{@player.score}."
		puts "\n"
	end

	#Welcome message
	def welcome
		puts "Welcome to Twitter Puzzle, a guessing game based on Twitter.\nPress ENTER to continue."
		gets.chomp
	end

	#Displays rules
	def rules
		puts "Here are the rules:"
		puts "# The program will display a series of tweets based on a search term you enter."
		puts "# In each tweet, one word will be ommitted. You have to guess it to earn points."
		puts "# The word will never be the same as your search term. It will not include punctuation, and your entry is not case-sensitive."
		puts "# Each correct answer earns you a point, each incorrect answer costs you one."
		puts "# If you don't know the answer, you have the option to pass. You won't earn or lose points. You have #{NUMBER_OF_PASSES} passes per game. To pass, type '#{PASS_COMMAND}' as an answer."
		puts "# You can get a hint by typing '#{HINT_COMMAND}' in the answer field. You have #{NUMBER_OF_HINTS} hints per game."
		puts "# There are two levels: EASY shows you the length of the ommitted word; HARD does not."
		puts "\n"
		puts "Press ENTER to continue."
		gets.chomp
	end

end