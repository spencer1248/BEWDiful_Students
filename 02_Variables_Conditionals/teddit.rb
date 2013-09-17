# require 'rest_client'
# require 'json'
 
# def show_message(message)
#   puts message
# end
 
# def get_input
#   gets.strip
# end
 
# def show_new_story_notification(story, category, upvotes)
#   show_message("New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}")
# end
 
# def calculate_upvotes(story, category)
#   upvotes = 1
 
#   if story.downcase.include? 'cat'
#     upvotes *= 5
#   elsif story.downcase.include? 'cocaine'
#     upvotes *=8
#   end
 
#   if category.downcase.include? "food"
#     upvotes *= 3
#   end
#   upvotes
# end
 
# def continue_adding_stories?
#   puts "Would you like to add another story? Enter 'y' or 'n'?"
 
#   (get_input != 'n')
# end
 
# def build_story(title, category, upvotes)
#   {
#     title: title,
#     category: category,
#     upvotes: upvotes
#   }
# end

# def get_stories_from_reddit
#   s1 = []
#   reddit_response = RestClient.get('http://www.reddit.com/.json')
#   reddit_data     = JSON.load(reddit_response)
  
#   reddit_data['data']['children'].each do |child|

#     data = child["data"]
    
#     title = data["title"]
#     category = data["subreddit"]
    
#     upvotes = calculate_upvotes(title, category)
    
#     story = build_story(title, category, upvotes)

#     s1 << story
#   end

#   s1
# end

# # def get_stories_from_digg
# #   s2 = []
# #   digg_response = RestClient.get('http://digg.com/api/news/popular.json')
# #   digg_data     = JSON.load(digg_response)
  
# #   digg_data['data']['feed'].each do |flash|

# #     data = flash["content"]
    
# #     title = flash["content"]["title_alt"]
# #     category = flash["tags"]["display"]
    
# #     upvotes = calculate_upvotes(title, category)
    
# #     story = build_story(title, category, upvotes)

# #     s2 << story
# #   end 
  
# #   s2
# # end

# # def get_stories_from_mashable
# #   s3 = []
# #   mashable_response = RestClient.get('http://mashable.com/stories.json')
# #   mashable_data     = JSON.load(mashable_response)
  
# #   mashable_data['new'].each do |article|
    
# #     title = article["title"]
# #     category = article["channel"]
    
# #     upvotes = calculate_upvotes(title, category)
    
# #     story = build_story(title, category, upvotes)

# #     s3 << story
# #   end

# #   s3
# # end
 
# def print_s1
#   stories.each do |story|
#     show_new_story_notification(story[:title], story[:category], story[:upvotes])
#   end
# end

# # def print_s2
# #   stories.each do |story|
# #     show_new_story_notification(story[:title], story[:category], story[:upvotes])
# #   end
# # end

# # def print_s3
# #   stories.each do |story|
# #     show_new_story_notification(story[:title], story[:category], story[:upvotes])
# #   end
# # end

 
# show_message("Welcome to Teddit! a text-based news aggregator. Get today's news tomorrow!")
 
# s1 = get_stories_from_reddit
# # s2 = get_stories_from_digg
# # s3 = get_stories_from_mashable


# print_s1(s1)
# # print_s2(s2)
# # print_s3(s3)
# end

#  # These stories will also be upvoted based on our rules. No more user input!
 
#  # Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# -# Add each story to an array and display your "Front page"
# +# Add each story to an array and display your "Front page"
# +
# +# require 'json'
# +# require 'rest_client'
# +
# +
# +# # make sure you have the required gems installed before running.  
# +
# +require 'json'
# +require 'rest-client'
# +
# +
# +
# +def display_new_story(story)
# +  puts "New Story Added!!! #{story[:title]}, Category; #{story[:category]}, Upvotes: #{story[:upvotes]}"
# +end 
# +
# +def display_all_stories(stories)
# +  stories.each do |story|
# +    puts "story: #{story[:title]}, category: #{story[:category]}, upvotes: #{story[:upvotes]}"
# +  end 
# +end 
# +
# +
# +# creating a method for getting news from mashable.  They store there keys as string, sor the below "hot" 
# +# referes to the key hot.  so we are going to iterate over the hash that has a key value of hot. We are going to return
# +# a hash called mashabl_story that will return us the  keys story, category.  We will use our upvotes method later.     We are going to get the values for 
# +# story from the current mashable values associated with their title key.  Looks like they store their category with the key
# +# channel, so we will use that to get our categories values.  We need to have a way for it to get the upvotes values
# +# so we will cal our get_upvotes method which takes our story argument, nicely done.  Now we need to put it all together
# +# so we will call our method for displaying a new story.  
# +def get_mashable_stories
# +
# +  s = JSON.load(RestClient.get('http://mashable.com/stories.json')) 
# +  s["hot"].map do |story|
# +  s = {story: story["title"], category: story["channel"]}
# +  get_upvotes(story)
# +  display_new_story
# +  story
# +  end
# +end 
# +get_mashable_stories
# +
# +
# +
# +
# +
# +def get_upvotes(story)
# +  story[:upvotes] = 1
# +  if story[:title].include? "hey"
# +    story[:upvotes] *= 5
# +  elsif story[:title].include? "you"
# +    story[:upvotes] *= 10
# +  else story[:upvotes] = 1
# +  end
# +end
# +
# +
# +
# +stories = []
# +puts "Welcome to teddit!  Get today's news tomorrow"
# +
# +puts "would you like to add a story?"
# +answer = gets.chomp
# +
# +loop do 
# +  if answer.downcase != "yes"
# +  break
# +end 
# +
# +
# +puts "What is your title:"
# +story =  {title: gets.chomp}
# +puts "Please give it a category:"
# +story[:category] = gets.chomp
# +get_upvotes(story)
# +stories << story
# +display_new_story(story)
# +puts "Would you like to add another story"
# +answer = gets.chomp
# +
# +end 
# +
# +display_all_stories(stories)
# +
# +
+# get_mashable_stories

require_relative 'lib/story' #creates a link to the Story class.
require_relative 'lib/story_board' #creates a link to the StoryBoard class.
require_relative 'lib/remote_source' #creates a link to RemoteSource class

def show_message(message)
  puts message
end

def get_input
  gets.chomp 
end

def get_choice
  gets.to_i
end

def show_menu
  show_message "Would you like to:"
  show_message "1. Get stories from Mashable"
  show_message "2. Add your own story"
  show_message "3. Exit"
end

def add_remote_stories
  RemoteSource.get.each do |story|
    StoryBoard.add_story story #adds story to an array of stories.
  end
end

def add_manual_stories
  show_message("Please enter a News story:")
  title = get_input
  show_message("Please give it a category:")
  category = get_input
  StoryBoard.add_story(Story.new(title, category))
end

def show_story_board
  StoryBoard.stories.each do |story| #StoryBoard.stories returns an array of stories
    show_message story 
  end
end



show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_menu
loop do
  choice = get_choice
  if choice == 1
    add_remote_stories
    show_story_board
    show_menu
  elsif choice == 2
    add_manual_stories
    show_story_board
    show_menu
  elsif choice ==  3 
    break
  else
    show_message "Invalid Selection"
    show_menu
  end
end

puts "Thank you for using Teddit!"
