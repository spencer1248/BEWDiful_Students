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

################ Variables ##################
secret_number = 6
total_guesses = 3
################ Variables ##################

#############method to check if the first two guesses are high,low or correct##############
def guess_checker(guess,secret_number,total_guesses)
    if guess == secret_number
       puts "You Win! Thank you for playing"
    elsif total_guesses == 1 && guess > secret_number
          puts "Your final guess is too high: You lose, the secret number is #{secret_number}"
    elsif guess > secret_number
       puts "Your guess is too high"
    elsif total_guesses == 1 && guess < secret_number
          puts "Your final guess is too low: You lose, the secret number is #{secret_number}"
    elsif guess < secret_number
          puts "Your guess is too low"
    elsif total_guesses == 1 && guess != secret_number
          puts "You lose: Thank you for playing; the secret number is #{secret_number}"
    end
    
end
############################ method ####################################### 

##########################Program Start ###################################      
puts "Welcome Player to the secret number game, created by James Naadjie, :Please Enter your Name to begin"
player_name = gets.chomp

puts <<WELCOME  
 Hello #{player_name} and Welcome, here are the rules of the game, you have 3 chances to guess a secret number between 1 and 10. You win by guessing the right number if you guess incorrectly after the third try, you lose. 
WELCOME

puts "Please enter your first Guess"
first_guess = gets.chomp.to_i
guess_checker(first_guess,secret_number, total_guesses)
total_guesses -= 1
 puts "You have #{total_guesses} guesses left Please enter your second guess"
 second_guess = gets.chomp.to_i
 guess_checker(second_guess,secret_number,total_guesses)
 total_guesses -= 1
 puts "You have #{total_guesses} guess left, Please enter your Last guess"
 last_guess = gets.chomp.to_i
 guess_checker(last_guess,secret_number,total_guesses)

##########################Program End ###################################     
 
 
 




