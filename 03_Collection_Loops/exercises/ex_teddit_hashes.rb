



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


# def display_new_story(title, category, upvotes)
# puts "Title #{title}, Category: #{category}, Upvotes: #{upvotes}"
# end 

# method for getting a new story and category
def prompt_new_story
	story = {}
	puts "What is the title of your new story?"
	story[:title] = gets.chomp.to_s
	puts "What category does your story fall under?"
	story[:category] = gets.chomp.to_s
	story = { :title => story[:title], :category => story[:category] } 
    return story
end 


# prompt_new_story = Hash.new
# story = prompt_new_story
# print story.values	

def get_upvote_value
	story = prompt_new_story
	story[:upvotes] = 0
	if story[:title].include? "hey"
		story[:upvotes] += 5
	else story[:upvotes] = 0
	end 
	print story
end 

get_upvote_value













#{story[:title]}, category: #{story[:category]}, upvotes: #{story[:upvotes]}")
# end 

# display_new_story(hey, you, guys)

# def calculate_upvotes


# binding.pry


# new_story_title = prompt_new_story
# puts new_story_title
# #method for displaying new story title

# def display_new_title(new_story_title)
# puts "#{new_story_title}"
# end 

# ###display_new_title