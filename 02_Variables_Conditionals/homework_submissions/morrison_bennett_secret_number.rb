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

puts `clear`  #Clear the screen.

puts "Welcome to the SECRET NUMBER game, coded by Bennett."
puts "First, tell me your name:"

player_name = gets.chomp 

guesses_left = 3

puts "Hello, #{player_name}"
puts "The rules of this game are simple:"
puts "You have #{guesses_left} chances to guess the SECRET NUMBER between 1 and 10."
puts "Let's begin."

puts "What's your first guess?"

secret_number = 3 #Hard coded secret number.

loop do # I went with the loop solution, creating two sequential conditional
	player_guess = gets.to_i
	guesses_left -= 1
	if secret_number == player_guess #This is the first conditional
		puts "You win, #{player_name}!  Awesome!"
		break #this ends the loop with a win!
	elsif secret_number > player_guess 
		puts "The SECRET NUMBER would never be that low. It's higher than that!"
	elsif secret_number < player_guess
		puts "The SECRET NUMBER is lower than that!"
	end
	if guesses_left > 1 #This is the second conditional that checks the number of guesses left and returns a GRAMMATICALLY CORRECT response.
		puts "You have #{guesses_left} guesses left"		
	elsif guesses_left == 1
			puts "Last try!"
	elsif guesses_left == 0
			puts "You have no guesses left. You lose, #{player_name}. Better luck next time."
		break #this ends the loop if there are no guesses left
	end
end