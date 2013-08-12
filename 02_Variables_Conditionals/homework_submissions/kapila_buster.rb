###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################


# global variables 
$secret_number
$remaining_guesses
$player_name


# initialize random secret_number, rest remaining_guesses to 3 and begin game
def play_game()
	$secret_number = rand(9) + 1
	$remaining_guesses = 3
	puts "Hi there, " + $player_name + "! Guess a number between 1 and 10.  You only have 3 chances!" 
	get_user_input()
end

# prompt user for number guess, then pass number to check_if_correct()
def get_user_input()
	puts "Remaining chances: #{$remaining_guesses}. Guess the secret number. "
	guess = gets.chomp.to_i
	check_if_correct(guess) 
end

# check if user's guess matches the $secret_number
# if yes, play_again()
# else decrement $remaining_guesses. if $remaing guesses > 0, get_user_input(), else play_again().
def check_if_correct(guessed_number)
	if "#{guessed_number}" == "#{$secret_number}"
		puts "#{guessed_number} is correct!  Thanks for playing!"
		play_again()
	else
		puts "Wrong!"
		$remaining_guesses -= 1

 		if $remaining_guesses < 1
 			puts "You ran out of guesses. The secret number was: #{$secret_number}. Better luck next time."
 			play_again()
 		else 
 			get_user_input()
 		end
 	end
 end

# Prompt user to play again or quit
def play_again() 
	puts "Would you like to play again? Enter y or n"
	play_bool = gets.chomp

	if "#{play_bool}" == "y"
		play_game()
	else
		puts "Thanks for playing, " + $player_name + ". Go live your life!"
	end
end


puts "Welcome to Secret Number Game, created by Buster Kapila. Please enter your name:"
$player_name = gets.chomp
play_game()





