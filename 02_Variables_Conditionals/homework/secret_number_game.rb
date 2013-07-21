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




rules ="I pick a number between 1-10 inclusively and you have 3 chances to guess it right.\nI'll tell you how many chances you have left after each guess along the way."
puts ""
print "Hey, thanks for swinging by to say hello! I'm Andrew Awesome, please enter your name\nif you would like to hear about my simple number game!"

user_name = gets.capitalize.chomp
puts "hey\s" +"#{user_name}!\s" + "It's a pleasure to meet you. The game is really simple.\n"  + "#{rules}\s" + "Press enter whenever you are ready to play"

gets



# setting a variable to the random number variable so we keep the same random generated number throughout
secret_random_generator = rand(1..10)
my_secret_number = secret_random_generator
counter = 3
puts "you have 3 guesses... whats's your number?"
user_number = gets.chomp.to_i



while counter > 0 do 
counter -= 1 

 if user_number == my_secret_number
	puts "That's awesome!\s" + ("Go" +  "#{user_name}!!!") * 3
	break
	
elsif counter == 0
	  puts "Sorry!\s" + "#{user_name}!\s" +"You lost!!!!!!!!!!\s" + "LOSER LOSER LOSER!"
	  
else 

	 puts "#{user_number}!?\s" + "Hmmmmmmmmm let me think....." + "Nope!\s Cmon " "#{user_name}!\s" + " Dont't embarrass yourself.. you only have\s" + "#{counter}\s" + "guesses left.. listen closely..." 
	 if user_number < my_secret_number 
	 	puts "Try something bigger...."
	 else puts "Try something smaller...."
	 end 

	 user_number = gets.chomp.to_i
	

	end 
end 




















































	




