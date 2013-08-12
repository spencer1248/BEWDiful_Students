# Introduction to the game and describe the game
puts 'hello, this is Andrew G, creator of this guessing game'
puts  'what is your name'
yourname = gets.chomp
puts "Hi #{yourname}!"
puts'In this game, you will guess a secret number that is between 1 and 10'
puts 'You will have 3 chances to guess at the correct secret number'

# this is the def method to check if guess is correct or returns true, otherwise returns false

def guessright(guess, correctnumber,done)
	if guess==correctnumber
		puts "That is the correct guess, you found the secret number!"
		done=true
	elsif guess > correctnumber
		puts "The secret number is lower"
		done=false
	else 
		puts "The secret number number is higher"
		done=false
	end
end

# generate random number between 1 and 10 and hardcode it
magicnumber=rand(1..10)

#prompt user to take first guess
puts 'Please now guess a number between 1 and 10'

#Instead of converting to integer, convert to float first then check if remainder mod 1 to check 
#if it is a whole number. If not whole number, then it is invalid entry and user must
#start the game again.  

yourguess = gets.to_f

if yourguess.between?(1,10) & (yourguess % 1 == 0)  #is it a whole number between 1 to 10
	numguesses = 3    #set game for three guesses
	doneyet = false   #initialize to false first

#set loop for number of guesses
	for i in 1..numguesses
		if guessright(yourguess,magicnumber,doneyet)  # def method returns true or false
			puts 'Congratulations you win the game'  
			exit
		elsif i <= numguesses-1   #only allow for two additional guess after first guess, hence the -1
			puts "You have #{numguesses-i} guesses available"
			puts "Please guess again"
			yourguess = gets.to_i  #assume user by now knows to put integer so just convert string to integer
		else
			puts 'Sorry you lost the game' #the last guess is either right or wrong
			puts "The secret number was #{magicnumber}"
		end
	end
else
	#user did not enter valid guess to start the game, so asked to start the game over
	puts "You did not enter a valid number between 1 to 10"
	puts "Please start the program again to play and enter a valid number between 1 to 10"
end
