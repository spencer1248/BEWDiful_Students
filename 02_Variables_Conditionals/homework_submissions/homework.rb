# Introduction Script

puts'Welcome to the game. This game is created by David Lau'
puts'What is your Name?'
name = gets.chomp

puts'Hi! ' + name
puts'Rules of the game: You must guess a number between 1 and 10, and you only have 3 tries to do so!'

# Game Begins

answer = 5

print "Enter First Guess:"
guess = Integer(gets.chomp)

if guess == answer
  puts "You are right!"
else
  puts "You are wrong, try you got two guesses left!"
end

print "Enter Second Guess:"
guess = Integer(gets.chomp)

if guess == answer
  puts "You are right!"
else
  puts "You are wrong, try you got one guesses left!"
end

print "Enter Last Guess:"
guess = Integer(gets.chomp)

if guess == answer
  puts "You are right!"
else
  puts "You Failed!"
end