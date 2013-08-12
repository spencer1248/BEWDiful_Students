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

# Introduction and setup
print "Welcome to the Random Number Game!\nCreated by Sanjay Merchant\nPlease enter your name:  "
player = gets.chomp
puts "Hi #{player}!\nIn this game, the computer will choose a random integer from 1 to 10.\nYou have 3 chances to correctly guess what number the computer has choesen."
remaining_guesses = 3
target = 1 + rand(10) #I understand rand(n) is effecticely equivalent to (1dn - 1), hence the 1 +
win = false

#Accepting and interpreting guesses.
while remaining_guesses > 0
	print "What is your guess?  "
	guess = gets.chomp.to_i
	if guess == target
		win = true
		remaining_guesses = 0
	elsif guess > target && guess < 11
		puts "Too high!"
		remaining_guesses -= 1
		if remaining_guesses > 0
			puts  "You have #{remaining_guesses} guesses left."
		end
	elsif guess < target && guess > 0
		puts "Too low!"
		remaining_guesses -= 1
		if remaining_guesses > 0
			puts  "You have #{remaining_guesses} guesses left."
		end
	else
		puts "Your answer should be an integer no less than 1 and no greater than 10.  Try again."
		puts  "You have #{remaining_guesses} guesses left."
end

#End of game
if remaining_guesses == 0 && win == true
		puts "Congratulations, #{player}!  You win!"
elsif remaining_guesses == 0 && win == false
		puts "Sorry #{player}, the correct answer was #{target}!"
end
end