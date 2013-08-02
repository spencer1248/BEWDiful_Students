
# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb. 
# Create an empty d array. This will be used to hold all d we capture.
# # Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called d and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the d array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for d until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#



# method for getting a new story and category




def get_upvotes(story)
	story[:upvotes] = 1
	if story[:title].include? "hey"
		story[:upvotes] *= 5
	elsif story[:title].include? "you"
		story[:upvotes] *= 10
	else story[:upvotes] = 1
	end
end

def display_new_story(story)
	puts "New Story Added!!! #{story[:title]}, Category; #{story[:category]}, Upvotes: #{story[:upvotes]}"
end 

def display_all_stories(stories)
	stories.each do |story|
		puts "story: #{story[:title]}, category: #{story[:category]}, upvotes: #{story[:upvotes]}"
	end 
end 


stories = []
puts "Welcome to teddit!  Get today's news tomorrow"

puts "would you like to add a story?"
answer = gets.chomp

loop do 
	if answer.downcase != "yes"
	break
end 


puts "What is your title:"
story =  {title: gets.chomp}
puts "Please give it a category:"
story[:category] = gets.chomp
get_upvotes(story)
stories << story
display_new_story(story)
puts "Would you like to add another story"
answer = gets.chomp

end 

display_all_stories(stories)





# #this will call new_story_hash which will run prompt_new_story getting the new title and category and will also run get_upvote_value
# #and return this into a hash
# # new_story_hash


# def display_new_story
# 	new_story = new_story_hash
# 	# return new_story
# 	print new_story[:title]
# end 

# display_new_story












