

greeting = "Hello and welcome to The Secret Number Game!"
author = "This game was created by Lindsey Bratner."
ask_name = "Player, what is your name?"
rules = "To win the game you must guess a number between 1 and 10.  You will only have 3 tries to guess the number correctly."

secret_number = 8
correct = false

correct_guess = "Congratulations!  You have guessed the secret number, thank you for playing."
high_guess = "Incorrect, your guess is higher than the secret number."
low_guess = "Incorrect, your guess is lower than the secret number."

def greet_player(greeting, author, ask_name, rules)
	puts "#{greeting} #{author}" 
	puts ask_name
	player_name = gets.chomp
	puts "Hi #{player_name}!"
	puts rules
end
	guess_left = 3
def play_game(secret_number, guess_left, correct, correct_guess, high_guess, low_guess)

	puts "What is your first guess?"
	while guess_left > 0  && correct == false
		guess = gets.to_i
		guess_left = guess_left -1
		if guess > secret_number && guess_left > 0 
			puts high_guess			
		elsif guess < secret_number && guess_left > 0 
			puts low_guess	
		elsif guess == secret_number
			puts correct_guess
			guess_left = 0
			correct = true
		end				
		if guess_left > 0
			puts "You have #{guess_left} guesses left.  What is your next guess?"
		end
	end
	if correct == false
		puts "You lost!  The correct number was #{secret_number}."
	end
end


greet_player(greeting, author, ask_name, rules)
play_game(secret_number, guess_left, correct, correct_guess, high_guess, low_guess)




