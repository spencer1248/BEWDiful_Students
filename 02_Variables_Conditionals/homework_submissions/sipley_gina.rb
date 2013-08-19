
# Introduction notes and misfires 	
#-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.

# def display_title(title)
# 	puts title
# end

# def display_name(name)
# 	puts name
# end

#def player_name (player)
	#puts player
#end

#def display_rules (rules)
#	puts rules
#end

# puts title = 'Welcome to the Secret Number Game! Created by Gina Sipley.'
# puts name = 'What is your name?'
# name=$stdin.gets.chomp
# puts "Hi {#player_name}"
#puts rules ='Here are the rules. You have three tries to correctly guess the secret number by choosing a number between 1 and 10.

puts "\nWelcome to the Secret Number Game!"
first_name="Gina"
last_name="Sipley"

puts "Created by " + first_name + " " + last_name

puts "\nWhat is your name?"

player_name = $stdin.gets.chomp

puts "Hi, #{player_name}! \nHere are the rules to this game. \nYou have three tries to correctly guess a magic number between 1 and 10."

#Functionality Notes and Misfires
#Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#


guesses_left = 3
secret_number = 7

puts "\nYou have #{guesses_left} guesses left. \nWhat is your first guess, #{player_name}?"

players_guess = $stdin.gets.chomp.to_i

if secret_number == players_guess
puts  "Congratulations! Game Over."
exit

elsif secret_number<players_guess
	puts "Sorry! Your chosen number is too high. Pick a lower number."
	exit

elsif secret_number>players_guess
	puts "Sorry! Your chosen number is too low. Pick a higher number"
	end

guesses_left = 2
secret_number = 7

puts "\nYou have #{guesses_left} guesses left. \nWhat is your second guess, #{player_name}?"

players_guess = $stdin.gets.chomp.to_i

if secret_number == players_guess
puts  "Congratulations! Game Over."
exit

elsif secret_number<players_guess
	puts "Sorry! Your chosen number is too high. Pick a lower number."
	exit

elsif secret_number>players_guess
	puts "Sorry! Your chosen number is too low. Pick a higher number"
	end

guesses_left = 1
secret_number = 7

puts "\nYou have #{guesses_left} guesses left. \nWhat is your third guess, #{player_name}?"

players_guess = $stdin.gets.chomp.to_i

if secret_number == players_guess
puts  "Congratulations! Game Over."
	exit

elsif secret_number<players_guess
	puts "Sorry! You lost. The secret number is 7. Game Over."	
elsif secret_number>players_guess
	puts "Sorry! You lost. The secret number is 7. Game Over."
	end

	


