number = 9
puts "Welcome to the Secret Number Game!  Created by Mike Mullaney."
puts "What is your name?"
name = gets.chomp
puts "Hi #{name}."
puts "Please guess a number between 1 and 10.  You will have three attempts to guess correctly.  After each incorrect attempt, you will be given a hint to help in your next guess."
puts "what is your guess?"
#Need to do this three times or until correct.
guess = gets.chomp
if guess.to_i == number
	puts "Congratulations! That is the correct number."
	puts "Hope you had fun! Please come again."
elsif guess.to_i < number
	puts "You guessed too low! Guess higher next time."
	puts "What is your second guess?"
	guess2 = gets.chomp
elsif guess.to_i > number
	puts "You guessed too high! Guess lower next time."
	puts "What is your second guess?"
	guess2 = gets.chomp
end
if guess2.to_i == number
	puts "Congratulations! That is the correct number."
	puts "Hope you had fun! Please come again."
elsif guess2.to_i < number
	puts "You guessed too low! Guess higher next time."
	puts "What is your third guess?"
	guess3 = gets.chomp
elsif guess2.to_i > number
	puts "You guessed too high! Guess lower next time."
	puts "What is your third guess?"
	guess3 = gets.chomp
end
if guess3.to_i == number
	puts "Congratulations! That is the correct number. Hope you had fun! Please come again."
else
	puts "Sorry, that is incorrect. Hope you had fun! Please come again."
end