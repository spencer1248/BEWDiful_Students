require_relative 'player'
require_relative 'secret_number'

class Game
	SECRET_NUMBER_RANGE = 10
	MAX_GUESSES = 3

	def initialize
		@player = Player.new(get_player_name)
		@secret_number = SecretNumber.new(secret_number_range)
		@is_running = false

	end

	def run
		welcome_player
		show_rules
		start_game
	end

	def start_game
		@is_running = true

		while is_running?
			reset_round
			start_round(@player, @secret_number)

			@is_running = continue_to_run?
		end
	end

	def start_round(player, secret_number)
		while round_in_progress?(player.current_guess, player.total_guesses)
			player.guess!(get_user_guess)

			if secret_number.is?(player.current_guess)
				show_winning_message
			else
				if out_of_guesses?(player.total_guesses)
					show_losing_message
				else
					give_hint(player.current_guess)
				end
			end
		end
	end

	def round_in_progress?(current_guess, total_guesses)
		current_guess_incorrect?(@secret_number, current_guess) && remaining_guesses?(total_guesses)
	end

	def current_guess_incorrect?(secret_number, current_guess)
		secret_number.is_not?(current_guess) 
	end

	def reset_round
		@secret_number = SecretNumber.new
		@player.reset_guesses
	end

	def remaining_guesses?(total_guesses)
		!out_of_guesses?(total_guesses)
	end

	def get_user_guess
		puts
		puts "Please guess a number:"
		
		get_user_input.to_i
	end

	def out_of_guesses?(total_guesses)
		total_guesses >= max_guesses
	end

	def show_winning_message
		puts "Congratulations, you guessed the secret number!"
	end

	def show_losing_message
		puts "Sorry, you've run out of guesses!"
		puts "The secret number was #{@secret_number.value}"
	end

	def give_hint(guess)
		if @secret_number.greater_than?(guess)
			puts "The secret number is greater than #{guess}"
		else
			puts "The secret number is less than #{guess}"
		end
	end

	def continue_to_run?
		puts "Would you like to play again? 'yes' or 'no'"
		input = gets.chomp

		case input
		when 'yes'
			true
		when 'no'
			false
		else
			puts 'Unexpected input.'
			continue_to_run?
		end
	end

	def get_user_input
		gets.chomp
	end

	def secret_number_range
		SECRET_NUMBER_RANGE
	end

	def max_guesses
		MAX_GUESSES
	end

	def get_player_name
		puts "Please enter your name:"
		gets.chomp
	end

	def welcome_player
		puts
		puts "Hi #{@player.name}!"
		puts "Welcome to the secret number game!"
		puts "Author: Spencer Rogers"
		puts
	end

	def show_rules
		puts
		puts "RULES:"
		puts "You have 3 tries to guess the secret number. The secret number is from 1 to #{secret_number_range}"
		puts "You will be given a hint after each incorrect guess."
		puts
	end

	def is_running?
		@is_running
	end
end
