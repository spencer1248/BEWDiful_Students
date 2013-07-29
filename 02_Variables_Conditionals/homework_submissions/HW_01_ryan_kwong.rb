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

puts "Welcome to Ryan's guessing game created by me, Ryan Kwong!"
puts "\nFirst, I'd like for you to enter your Name:"

player_name = gets.capitalize.chomp

puts "\nHi #{player_name}!"

puts "\n#{player_name}, I'm thinking of a number between 1-10\nYou'll have 3 tries to guess that number!"

answer = 5

guess = 3

while guess != 0 do
	puts "\nPlease guess a number: "
	user_guess = gets.chomp.to_i
	guess -= 1

		if user_guess > answer && guess > 1
			puts "Please try again. Your guess is too high and you have #{guess} more guesses left"

		elsif user_guess > answer && guess == 1
			puts "Please try again. Your guess is too high and you have #{guess} more guess"

		elsif user_guess < answer && guess > 1
			puts "Please try again. Your guess is too low and you have #{guess} more guesses left"

		elsif user_guess < answer && guess == 1
			puts "Please try again. Your guess is too low and you have #{guess} more guess"

		elsif user_guess != answer && guess == 0
			puts "You lose, the answer was #{answer}"
		break

		elsif user_guess == answer
			puts "Congrats! You are correct!"
			break
		end
end
