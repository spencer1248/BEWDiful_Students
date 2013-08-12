
#Introduction Section & Asking them for their name and greeting them.

def display_title (title)
	puts title
end	

title = "Welcome to Secret Number. \nIt was created by the good folks at General Assembly and coded by Sarah Krasley."
display_title (title)	

puts "What is your name?"
$name = gets.chomp
puts "Hi "+$name+"!"
#ask at office hours why the exclamation point is going to the next line

def display_instructions (instructions)
	puts instructions
end

instructions = "Let's get started. \n To play this game, you have to guess the secret number. \n It is an integer between 1 and 10. \n You will only have three chances to guess correctly."
display_instructions (instructions)

#Variables

secret_number = 8
perfect_guess_message = "You star. That is correct! The secret number is #{secret_number}."
too_high_message = "Too high. Simmer down!"
too_low_message = "Too low. Warm it up, "+$name+"!"

#Dealing with the number of guesses


#First Guess

guesses = 3

guesses.downto(1) do |guess|
	puts "Please guess the secret number."
	guess = gets.to_i

	if guess == secret_number 
		puts perfect_guess_message
    break
  elsif guess > secret_number
  	puts too_high_message
  elsif guess < secret_number 
  	puts too_low_message
  end
  
  guesses -= 1
  puts "You have #{guesses} guesses left"
end


# - Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10
# and that they only have 3 tries to do so.
#
# Functionality:
# - Hard code the secret number. Make it a random number between 1 and 10.
# - Ask the user for their guess.
# - Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
# - If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
# - Don't forget to let your players know how many guesses they have left. Your game should say something like
# "You have X many guesses before the game is over enter a another number"
# - If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
#
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################