# Declaring all methods
def display_title(title)									#Displaying title of the game
	puts title
end

def welcome_user(msg, name)									#Welcoming the user with his name
	puts "#{msg} #{name}!"
end

def set_rules(guesses, number, highest)								#Setting the rules
	puts "What should the highest possible number be?"		#Defining range for random number
	highest = gets.chomp
	number = rand(highest.to_i)+1
	puts "How many guesses would you like to have?"			#Setting number of guesses
	guesses = gets.chomp
	guesses = guesses.to_i
	puts "You have #{guesses} guesses to correctly guess a random integer between 1 and #{highest}."
	return [guesses, number, highest]
end

def guessing(number, counter, guesses, win, highest)					#Letting the user guess a number, returning feedback
	puts "Please guess a number between 1 and #{highest}:"
	guess = gets.chomp
	guess = guess.to_i
	counter += 1
	win = false
	if guess < number
		puts "That's not it. You should guess higher than #{guess}."
		left_guesses(counter, guesses)
	elsif guess > number
		puts "That's not it. You should guess lower than #{guess}."
		left_guesses(counter, guesses)
	elsif guess == number
		win = true
	end
return [number, counter, guesses, win, highest]
end

def left_guesses(counter, guesses)							#Displaying number of left guesses.
	left = guesses - counter
	if left > 1
		puts "You have #{left} guesses left."
	elsif left == 1
		puts "You have #{left} guess left."
	elsif left == 0
		puts "You have no guesses left."
	end	
end


def end_of_game(win, number)								#Displaying end of game message dependent on value of win.
	if win == true
		puts "CONGRATULATIONS! You guessed correctly!"
	elsif win == false
		puts "I'm sorry, the game is over. The correct number was #{number}."
	end
end

#Executing program

loop do
	# Declaring variables
	title = "Welcome to Secret Numbers, a game by Nico Luchsinger."
	msg = "Great to have you playing,"
	counter = 0
	win = false
	guesses = nil
	number = nil
	highest = nil

	#Title message
	display_title(title)

	#Welcoming the user
	puts "Please enter your name:"
	name = gets.chomp
	welcome_user(msg, name)

	#Setting the rules of the game
	guesses, number, highest = set_rules(guesses, number, highest)

	#Start guessing according to rules
	loop do																	#Creating a loop for user input
		number, counter, guesses, win, highest = guessing(number, counter, guesses, win, highest)															
	break if counter == guesses || win == true								#Loop aborted if either of these two conditions is met
	end

	#Display end of game message
	end_of_game(win, number)

	# Option to play another game
	puts "Would you like to play another game?(y/n)"
	continue = gets.chomp
break if continue == "n"

end