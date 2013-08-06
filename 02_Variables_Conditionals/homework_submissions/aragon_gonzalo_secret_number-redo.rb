secret_number = "7"
creator = "Gonz"
guesses = 3

puts "Welcome to the Secret Number Game, created by #{creator}! What's your name?"
user_name = gets.chomp

puts "Greetings #{user_name}, you have 3 guesses to figure out the secret number, it's between 0 and 10. What is your first guess?"

loop do
  guessed = gets.chomp
  guesses -= 1
  if guessed == secret_number
    puts "you win"
  break 
  elsif guessed != secret_number && guesses > 0
    if guessed > secret_number
      puts "too high! you have #{guesses} guesses left, guess again"
    elsif guessed < secret_number
      puts "too low! tou have #{guesses} guesses left, guess again"
    end
  else 
    puts "You lost! Secret number was #{secret_number}..good bye"
    break
  end
end

############################ SECOND ATTEMPT


# secret_number = "7"
# guesses = 3
# creator = "Gonzalo"

# def greeting
#   puts "Welcome to the Secret Number Game! What's your name?"
#   user_name = gets.chomp
#   puts "Greetings #{user_name}, welcome to #{creator}'s game. You have 3 guesses to figure out the secret number, it's between 0 and 10. What is your first guess?" 
# end

# def guess
#   guesses -= 1
#   puts = "What is your guess?"
#   input_guess = gets.chomp

#   if input_guess == secret_number
#     puts "You win, amazin! Secret number was #{secret_number}"
#   end
# end

# greeting
# guess

########### FIRST ATTEMPT ###################################


# guess_1 = gets.chomp

# if guess_1 < secret_number
#  	puts "too low, guess again!"
#  	guess_2 = gets.chomp
#   	if guess_2 < secret_number
#   	 	puts "still too low, last guess!"
#   	 	guess_3 = gets.chomp
#   	 		if guess_3 < secret_number
#   	 			puts "too low, the secret number was #{secret_number}, you lose."
#   	 		elsif guess_3 > secret_number
#   	 			puts "too high, the secret number was #{secret_number}, you lose"
#   	 		else guess_3 == secret_number
#   	 			puts "finally! you're right!"
#   	 		end		
#   	elsif guess_2 > secret_number
#   	 	puts "too high, last guess!"
#   	 	guess_3 = gets.chomp
#   	 		if guess_3 < secret_number
#   	 			puts "too low, the secret number was #{secret_number}, you lose."
#   	 		elsif guess_3 > secret_number
#   	 			puts "too high, the secret number was #{secret_number}, you lose"
#   	 		else guess_3 == secret_number
#   	 			puts "finally! you're right!"
#   	 		end
#   	else guess_2 == secret_number
#   	 	puts "You're right, good job!"
#   	end  		
# elsif guess_1 > secret_number
#  	puts "too high, guess again"
#  	guess_2 = gets.chomp	
# 	if guess_2 > secret_number
#     	puts "still too high, last guess!"
#     elsif guess_2 < secret_number
#     	puts "too low, last guess!"
#     else guess_2 == secret_number
#     	puts "congrats, you're right!"
#     end		
#     guess_3 = gets.chomp
#   	 		if guess_3 < secret_number
#   	 			puts "too low, the secret number was #{secret_number}, you lose."
#   	 		elsif guess_3 > secret_number
#   	 			puts "too high, the secret number was #{secret_number}, you lose"
#   	 		else guess_3 == secret_number
#   	 			puts "finally! you're right!"
#   	 		end	
# else guess_1 == secret_number
# 	puts "You're right! Amazing, first guess too."
# end 





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

