class Main
	attr_accessor 
	def initialize
end

class Secret_Number
 
end

class Player

end

class Game
	attr_accessor :number, :counter, :guesses, :answer 
		def initialize(number, counter, guesses, answer)
		@number = number
		@counter = counter
		@guesses = guesses
		@answer = answer
end

	def guess_status
		if guess

## OUTPUT AND CHECK FOR GUESS COMPARISON
def check_guess(guess, correct_number)
  if guess === correct_number #use triple === to make sure type is the same (we know it is but this is safer)
    puts "Correct! Well done."
    return false
  elsif guess > correct_number
    puts "Your number was a bit high."
    return true
  elsif guess < correct_number
    puts "Your number was a bit low."
    return true
  else #hmm. This is a catch all. Just to make sure.
    puts "Something went wrong."
    raise "Something went wrong. (Post the error on the chat board!)" #Give me an error.
  end
end
 
## MAKE SURE YOU HAVE GUESSES LEFT AND GIVE USER FEEDBACK
def guess_num_check(current_guess, max_guesses)
  puts current_guess< max_guesses ? "You have #{max_guesses-current_guess} picks left." :  "You're DONE. Sorry!"
  return current_guess< max_guesses #you don't need the return here. (I use it to be very clear)
end
 
 
##INIT SCRIPT
print `clear`
puts "Welcome to the game. Enter your name:"
name = gets.chomp
#Sets
max_guesses = 3
correct_number = rand(1..100)
#defaulting
current_guess = 0
begin
  print "Guess a number between 1 and 100! --> "
  num = gets.chomp.to_i
end while check_guess(num,correct_number) && guess_num_check(current_guess +=1, max_guesses)
 
line = '----------'
puts "#{line}\nGoodbye #{name}.\n#{line}\nThe number was #{correct_number}\n#{line}"