puts "'Guess That Number' brought to you by Lam Thuy Vo"

def display_title(title)
	puts title
end 

title = "Hello! Today we're going to play a game. Let's start by introductions. What's your name?"
display_title(title)

player_name = ""
player_name = gets

puts "Hello #{player_name}."

puts "So here are the rules. There's a secret number.\n 
It's a number between 1 and 10. You get three guesses to get the right number.\n 
After each guess I will give you a clue about the number. Ready? Make a guess!"

secret_number = 9

remaining_guesses = 3

loop do 
	guess = gets.chomp.to_i
	remaining_guesses -= 1
	if guess == secret_number
		puts "Well done! You won!"
		break
	elsif guess > secret_number && remaining_guesses != 0
		puts "Too high! Try again"
	elsif guess < secret_number && remaining_guesses != 0
		puts "Too low! Guess again!"
	else guess != secret_number && remaining_guesses = 0 
		puts "Sorry! You lost. The secret number was #{secret_number}"
		break
	end
end


#FAIL:
# loop do 
# 3.downto(1) do |guesses|
# 	if guess == secret_number 
# 		puts "Well done! You won!"
# 		#break
# 	elsif guess > secret_number
# 		puts "Too high! Try again"
# 		#break
# 	else guess < secret_number
# 		puts "Too low! Guess again!"
# end
# end





#def numberguess
#end


