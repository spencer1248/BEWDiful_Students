



# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb. 
# Create an empty stories array. This will be used to hold all stories we capture.
# # Users enter the story as they do now, but it gets put in a hash instead. 
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



# method for getting a new story and category
def prompt_new_story
	story = {} # do you prefer using story = Hash.new for better reading or other purposes?  please share  your thoughts
	puts "What is the title of your new story?"
	story[:title] = gets.chomp.to_s
	puts "What category does your story fall under?"
	story[:category] = gets.chomp.to_s  # do I need to use the .to_s method here?  I think that gets.chomp will automatically make it a string, right?
	# story = { :title => story[:title], :category => story[:category] } # this is what return story knows. 
    return story
end 


#this calls prompt_new_story and based on the title will calculate new upvotes value and story title, category, and upvotes
def get_upvote_value
	story = prompt_new_story
	story[:upvotes] = 0
	if story[:title].downcase.include? "hey"
		story[:upvotes] += 5
	elsif story[:title].downcase.include? "bacon"
		story[:upvotes] += 10
	else story[:upvotes] = 0
	end 
	return story
end 

#gives us the new story hash
def new_story_hash
story_hash = get_upvote_value
# new_story = {New story Added!!!: "#{story[:title]}", Category: "#{story[:category]}", Upvotes: "#{story[:upvotes]}"}
print story_hash
end

#this will call new_story_hash which will run prompt_new_story getting the new title and category and will also run get_upvote_value
#and return this into a hash
new_story_hash












