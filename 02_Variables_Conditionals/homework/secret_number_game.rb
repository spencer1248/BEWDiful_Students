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

#adding a line to test myself on using git correctly.

#adding a second line to test myself on using git correctly.


#-----

# welcome_line = "Welcome to my secret number game! My name is Andrew Silbersmith and I have written a little game but, before we can get
# started I am going to need your name.  Please, whenever you are ready enter your name."

# the_game = "Welcome to my game.  The name of the game is Andrew Silbersmith's Secret Number Game!  You will have 3 shots to guess a number
# that I pick between 1-10, inclusively."

# understand_game = "Do you understand the rules of the game?"

# puts "#{welcome_line}"



# #this section will mess with the user to enter his name with a capital letter first and basically state the game and get the players number.  If the player does not
# #agree with his name, the game will end and if the player does not agree to the rules the game will end.  
# #***still need to break if player doesn't agree with name and still have to have them agree to understading the rules but moving forward for right now.  

# player_name = gets.chomp
# if player_name == player_name.capitalize
# 	puts "Hey\s" + ' ' + "#{player_name}!\s"+ "#{the_game}"
# else 
#     puts "#{player_name}!?\s" + "What were you born in a barn!?"
#     puts  "#{player_name}!\s".capitalize + "That\'s what you meant to say right?"
# 	reply = gets.chomp

# 	if reply.downcase == 'yes' || 'right'
# 		puts "Hey\s" + "#{player_name}!\s".capitalize + "#{the_game}" 
		 
# 	 else 	
# 	 puts "Learn your name!\s" + "#{player_name}!".swapcase + "Goodbye"


# 	end

# # end 

# -----


# adding 


# counter = 3
# secret_number = 5

	
# #making an if else for which prompt is given based on their number of guesses left...  


# if counter == 3
# 	puts "ok this is your first try go ahead"

# else puts "ok, you are down to" + "#{counter}" + "of guesses"

# user_number = gets.chomp.to_i
# end 

# if    user_number == secret_number
# 	  puts "Holy Smokes! How did you know what I was thinking"

# elsif while user_number != secret_number || counter == 0
# 	counter -= 1

# else puts "What a loser you are! Game over!"

# end


counter = 3
secret_number = 5

puts "you have 3 guesses... whats's your number?"
user_number=gets.chomp.to_i

while counter > 0 do 
counter -= 1 

 if user_number == secret_number
	puts "That's awesome!"
	break
	

elsif counter == 0
	  puts "Sorry! You lost"
	  

else
	
	puts "Nope... sorry you now only have\s" + "#{counter}" +"\s left, go ahead and guess again"
	secret_number = gets.chomp.to_i

end 
end 
	# puts "you have\s" + "#{counter}" +"\s left"
	# user_number = gets.chomp

# user_number == secret_number do


	# puts "whats your number"
	# user_number = gets.chomp







# while counter >=0<3
# 	counter -= 1
# end 
# puts "#{counter}"



# 	puts 
# if 	endendenduser_number == secret_number
# 	puts "WoW! How did you know what I was thinking!"
# else 
# 	puts ""



# end 























































	




