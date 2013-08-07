# Step 1: Working with Arrays and Hashes
 
# Copy your solution from conditional_teddit.rb.
 
# Create an empty stories array. This will be used to hold all stories we capture.
 
# Users enter the story as they do now, but it gets put in a hash instead.
 
# Update any reference to the story (upvotes, category and title)
 
# Your story hash should look like the one below (multiline formatting optional):
# {
#       title: "Monkeys thank mayor for flounder tooth necklace",
#       category: "Teeth",
#       upvotes: 1
# }
 
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for
#flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array
 
# Test your cat, bacon, and food upvote conditional logic.
 
# Step 2: Adding Loops
# Use a loop, so that your program continues to ask a user for stories until they
#chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
 
# Once the user is finished with entering their stories, use .each to print each
# story in the stories array.
 
require 'rest_client'
require 'json'
 
def show_message(message)
  puts message
end
 
def get_input
  gets.strip
end
 
def show_new_story_notification(story, category, upvotes)
  show_message("New story added! #{story}, Category: #{category}, Current Upvotes: #{upvotes}")
end
 
def calculate_upvotes(story, category)
  upvotes = 1
 
  if story.downcase.include? 'cat'
    upvotes *= 5
  elsif story.downcase.include? 'bacon'
    upvotes *=8
  end
 
  if story.downcase.include? 'cocaine'
    upvotes *= 3
  end
  upvotes
end
 
def continue_adding_stories?
  puts "Would you like to add another story? Enter 'y' or 'n'?"
 
  (get_input != 'n')
end
 
def build_story(title, category, upvotes)
  {
    title: title,
    category: category,
    upvotes: upvotes
  }
end
 
def get_story_from_user
  show_message("Please enter a News title:")
  title = get_input
 
  show_message("Please give it a category:")
  category = get_input
  upvotes = calculate_upvotes(title, category)
 
  build_story(title, category, upvotes)
end

################################# Reddit

def get_story_from_reddit
  stories = []
  reddit_response = RestClient.get('http://reddit.com/.json')
  reddit_data     = JSON.load(reddit_response)

  

  reddit_data['data']['children'].each do |child|

    data = child['data']

    title = data['title']

    category = data['subreddit']

    upvotes = calculate_upvotes(title, category)

    story = build_story(title, category, upvotes)

    stories << story
  end

  stories

end  

################################# Mashable

def get_story_from_mashable
  stories = []
  mashable_response = RestClient.get('http://mashable.com/stories.json')
  mashable_data     = JSON.load(mashable_response)

  

  mashable_data['new'].each do |child|

    # data = child['link=']

    title = child['title']

    category = child['channel']

    upvotes = calculate_upvotes(title, category)

    story = build_story(title, category, upvotes)

    stories << story
  end

  stories
  
end
 
def print_stories(stories)
  stories.each do |story|
    show_new_story_notification(story[:title], story[:category], story[:upvotes])
  end
end
 
################################# digg

def get_story_from_digg
  stories = []
  digg_response = RestClient.get('http://digg.com/api/news/popular.json')
  digg_data     = JSON.load(digg_response)

  

  digg_data['data']['feed'].each do |child|

      # contentdigg = child['content']

    title = child['content']['title']

      # tagsdigg = child['content']['tags']

    category = child['content']['tags'].map{|x| x['name']}.join(", ")

    # puts "CATEGORY: #{category}"
    
    # child['content']['tags'].each do |tags_child| tags_child['display'] = cat_display 
    
    upvotes = calculate_upvotes(title, category)

    story = build_story(title, category, upvotes)

    stories << story
  end

  stories
  
end
 
def print_stories(stories)
  stories.each do |story|
    show_new_story_notification(story[:title], story[:category], story[:upvotes])
  end
end

################################# ESPN

def get_story_from_ESPN
  stories = []
  ESPN_response = RestClient.get('http://api.espn.com/v1/sports/basketball/nba/news/headlines?apikey=55m6uwuqv9atxv3hk2kfnns3')
  ESPN_data     = JSON.load(digg_response)

  ESPN_data['headlines'].each do |child_of_headlines|

    title = child_of_headlines['headline']

    category = child_of_headlines['keywords']

    ###

    upvotes = calculate_upvotes(title, category)

    story = build_story(title, category, upvotes)

    stories << story
  end

  stories
  
end
 
def print_stories(stories)
  stories.each do |story|
    show_new_story_notification(story[:title], story[:category], story[:upvotes])
  end
end

  ################################# 

# stories = []
# accepting_input = true
 
show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
 
# stories = get_story_from_reddit
# stories = get_story_from_mashable
# stories = get_story_from_digg
stories = get_story_from_ESPN
 
print_stories(stories)

