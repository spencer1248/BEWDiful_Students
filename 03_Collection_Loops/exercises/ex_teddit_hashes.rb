# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb. 
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
# stories = {}
# puts "what is your story?"
# gets.chomp << new_story
# stories = "{new_story}"

# stories






puts "what is the new story?"
gets.chomp = story.New

def new_story_hash(new_story)
	new_story = Hash.new
end 


def display_title(title)

	puts "title: #{title}"

end

def display_story(category)

	puts "Category: #{story}"
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
