# We're going to add a remote data source to pull in stories, Digg and Mashable
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

# require 'json'
# require 'rest_client'


# # make sure you have the required gems installed before running.  

require 'json'
require 'rest-client'



def display_new_story(story)
	puts "New Story Added!!! #{story[:title]}, Category; #{story[:category]}, Upvotes: #{story[:upvotes]}"
end 

def display_all_stories(stories)
	stories.each do |story|
		puts "story: #{story[:title]}, category: #{story[:category]}, upvotes: #{story[:upvotes]}"
	end 
end 


# creating a method for getting news from mashable.  They store there keys as string, sor the below "hot" 
# referes to the key hot.  so we are going to iterate over the hash that has a key value of hot. We are going to return
# a hash called mashabl_story that will return us the  keys story, category.  We will use our upvotes method later.     We are going to get the values for 
# story from the current mashable values associated with their title key.  Looks like they store their category with the key
# channel, so we will use that to get our categories values.  We need to have a way for it to get the upvotes values
# so we will cal our get_upvotes method which takes our story argument, nicely done.  Now we need to put it all together
# so we will call our method for displaying a new story.  
def get_mashable_stories

	s = JSON.load(RestClient.get('http://mashable.com/stories.json')) 
	s["hot"].map do |story|
	s = {story: story["title"], category: story["channel"]}
	get_upvotes(story)
	display_new_story
	story
	end
end 
get_mashable_stories





def get_upvotes(story)
	story[:upvotes] = 1
	if story[:title].include? "hey"
		story[:upvotes] *= 5
	elsif story[:title].include? "you"
		story[:upvotes] *= 10
	else story[:upvotes] = 1
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


# get_mashable_stories