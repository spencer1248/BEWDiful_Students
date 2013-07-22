#BEWD homework 1 - Secret FIXED number using WHILE-LOOP

def intro    #defining variable intro
	puts "Welcome to ANOTHER Secret FIXED Number game, created by Paul Hanvongse."   #one run, intro puts string
	puts "Please type in your name: "															#one run, intro puts string
	user = gets.chomp																							#define user as player input
	puts "Hello #{user}! \nYou must guess a number between 1 and 10. \n\tYou have three tries. Good luck!"  #string interpolation of what player enters
end

def secret_number #define secret_number variable, containing while-loops and if-else statements
	puts "Enter your number: "
	number = 4			#define secret number as 4
	guesses = 0			#guesses variable starting off as '0'
	guess = gets.chomp		#guess variable defined as getting user input

	#while loop run as long as variable guess is either lower or higher than variable number
	
	while guess.to_i < number and guesses < 3   #while guess( method .to_i convert to integer) is less than variable number (is true)  AND guesses variable less than 3 (is true), enter this loop 
		puts "A little higher. Try again: "       #puts string
		guesses += 1 															#after enter this loop, increment number of guesses by 1
		guess = gets.chomp 												#have user enter another guess as long as they're in the string
	end
	
	while guess.to_i > number and guesses < 3  #while guess (method .to_i convert to integer) is more than variable number (is true) AND guesses variable less than 3 (is true), enter this loop
		puts "A little lower. Try again: "     
		guesses += 1
		guess = gets.chomp
	end

	if guess.to_i == number and guesses < 3   #if guess variable is equal to number and guesses is less than 3 (is true), 
		puts "Yay! You got it!"									#puts string
	else 																			#otherwise
		puts "Out of guesses: Game Over."				#puts string
	end
end


intro  							#run intro variable
secret_number 			#run secret_number variable