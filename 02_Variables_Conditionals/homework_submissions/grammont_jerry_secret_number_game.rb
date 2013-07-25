def display_title(title)
	puts title
end

title = "Welcome to Mind-Reader! A numbers guessing game.\nCreated by Jerry Grammont"
display_title(title)
 
puts "Please enter your name?"
name =gets.chomp

puts "Hello #{name} Here are the rules: \nGuess the secret number between 1 - 10 and win. You only have 3 guesses choose wisely!"
  	
secret_number = 5
guesses_left = 3

puts "Take your first guess young Jedi"

3.times do
	guess = gets.to_i
		 guesses_left -= 1
	if guess == secret_number
		puts "You win, you are truly a Jedi master!"
		break
	elsif guess != secret_number && guesses_left != 0	
	if guess < secret_number
		puts "Your guess is too low! Try again. You have: #{guesses_left} guesses left"
	elsif guess > secret_number
		puts "Your guess is too high! Try again. You have: #{guesses_left} guesses left"
	end
else puts "Sorry you need more training young Jedi!"
	break
end
end


		

 	