# print 'Welcome to Teddit! Everyone\'s favorite!'

# print 'cat jumps out of a box! upvote: 9001'

# upvotes = 9001

# puts 'Welcome to Teddit! Everyone\'s favorite!'

# puts 'cat jumps out of a box!  upvotes:' + upvote.to_s


# puts "What is your name?"

# name = gets.chomp

# puts "Hey #{name}, tell me a story title!"

# title = gets.chomp

# puts "what category would you say that title falls under?"

# category = gets.chomp

# puts "User #{name} just added a new story title called #{title} and categorizes it as #{category}"





# # puts 'do you want to add another title?'

# # response = gets.chomp

# # while response.downcase == 'yes'

# puts 'what title would you like to add?'

# second_title = gets.chomp

# puts 'What is the category this movie would fall under?'

# second_category = gets.chomp

# puts "Congradulations #{name}! you just added #{second_title} and decided it's a category #{second_category}"



def display_title(title)

	puts "#{title}"

end

def display_story(story)

	puts "#{story}"
end

def display_upvotes(upvotes)
 	puts "Upvotes: #{upvotes}"

end 



title = 'Welcome to Teddit! Everyone\'s favorite!'
story = "The Cat in the Hat"
upvotes = 0


if story.downcase.include?("cat")
	upvotes += 5
elsif story.downcase.include?("bacon")
	upvotes += 8
else
	upvotes
end
display_title(title)
display_story(story)
display_upvotes(upvotes)










# if story.include?('cat')
# 	puts "hey"


# end


# if story.include?('cat')

# # puts "#{story}\nUpvotes:\t #{upvotes}


























