###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number Game
# Created by Mercer Hall
# Instructed by Spencer Rogers
#
###############################################################################
 
# Well, this program works successfully, and it accounts for many possible user mistakes.
# I realize that I have used global variables, which is not ideal.
# I wanted to program for multiple contingencies, such as if the user inputed a number not between 1 and 10,
# or if the user inputed a number that they had already inputed.
# I also wanted to practice with methods and set up scenarios that would be applicable to future exercises,
# rather than just typing out the code in sequence.
# So the code here is not DRY, and it is probably unnecessarily complicated for this beginning stage.
# I'll include more reflections in my development journal: mhallbewd.wordpress.com


def display_title(title)
	puts title
end 

def display_name(name)
	puts "\nGreetings #{name}."
end

def display_rules(rules)
	puts rules
end

def higher_lower(guess)
	if $secret_number < guess
		puts "You guessed too high. Choose a lower number."
	else 
		puts "You guessed too low. Choose a higher number."
	end
end

def makeguess_one(guess_one)
	if $guess_one > 10
		puts "That number is not between 1 and 10. Please try again."
		$guess_one = $stdin.gets.chomp.to_i
		makeguess_one($guess_one)

	elsif $guess_one < 1
		puts "That number is not between 1 and 10. Please try again."
		$guess_one = $stdin.gets.chomp.to_i
		makeguess_one($guess_one)

	elsif $guess_one == $secret_number
		puts "Congratulations! You guessed the secret number! You win!"
		exit

	else
		guess = $guess_one 
		higher_lower(guess)
	end
end

def makeguess_two(guess_two)
	if $guess_two > 10 
		puts "That number is not between 1 and 10. Please try again:"
		$guess_two = $stdin.gets.chomp.to_i
		makeguess_two($guess_two)

	elsif $guess_two < 1
		puts "That number is not between 1 and 10. Please try again:"
		$guess_two = $stdin.gets.chomp.to_i
		makeguess_two($guess_two)

	elsif $guess_two == $guess_one
		puts "You already guessed that number. Please try again:"
		$guess_two = $stdin.gets.chomp.to_i
		makeguess_two($guess_two)

	elsif $guess_two == $secret_number
		puts "Congratulations! You guessed the secret number! You win!"
		exit

	else
		guess = $guess_two 
		higher_lower(guess)
	end
end

def makeguess_three(guess_three)
	if $guess_three > 10
		puts "That number is not between 1 and 10. Please try again:" 
		$guess_three = $stdin.gets.chomp.to_i
		makeguess_three($guess_three)

	elsif $guess_three < 1
		puts "That number is not between 1 and 10. Please try again:"
		$guess_three = $stdin.gets.chomp.to_i
		makeguess_three($guess_three)

	elsif $guess_three == $guess_one || $guess_three == $guess_two
		puts "You already guessed that number. Please try again:"
		$guess_three = $stdin.gets.chomp.to_i
		makeguess_three($guess_three)

	elsif $guess_three == $secret_number
		puts "Congratulations! You guessed the secret number! You win!"
		exit

	else
		puts "I'm sorry. You lost. The game is over. The secret number was #{$secret_number}."
	end
		
end


# Welcome the player to your game. Let them know who created the game.

title = "\nWelcome to the exciting new game that is sweeping America: SECRET NUMBER! 
Created by a rogue international hacker, this game will test your endurance and reward your wits. 
Enjoy the challenge!"

display_title(title)

# Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"

puts "Please enter your name:"
name = $stdin.gets.chomp

display_name(name)

# Communicate the rules. 
# Let player know they must guess a number between 1 and 10 and that they only have 3 tries.

rules = "Try to guess the secret number. 
\nPick any number between 1 and 10, 
but beware ... you only have 3 tries!"

display_rules(rules)

# Hard code the secret number. Make it a random number between 1 and 10.

$secret_number = 6

# Ask the user for their first guess.

puts "Please enter your first guess:"
$guess_one = $stdin.gets.chomp.to_i

# Run make_guess_one method, check if acceptable number, check if correct, give higher or lower advice.
# Run make_guess_two method.

makeguess_one($guess_one)

puts "You have 2 guesses remaining. Please enter your second guess:"
$guess_two = $stdin.gets.chomp.to_i

# Run make_guess_two method, check if acceptable number, check if already guessed that number, check if correct, give higher or lower advice.
# Run make_guess_three method.

makeguess_two($guess_two)

puts "You only have one more guess. Please enter your third guess:"
$guess_three = $stdin.gets.chomp.to_i

# Run make_guess_three method, check if acceptable number, check if already guessed that number, check if correct.
# If not corrent, tell print that game is over and tell secert number.

makeguess_three($guess_three)

###############################################################################
