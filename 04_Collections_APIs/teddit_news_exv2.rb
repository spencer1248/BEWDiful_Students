#We're going to add remotee data source to pull in stories, Digg and Mashable
#http://mashable.com/stories.json
#http://digg.com/api/news/popular.json
#These stories will also be upvoted based on our rules. No more user input!

require 'rest_client'
require 'json'
 
def show_message(message)
  puts message
end
 
def get_input
  gets.strip
end
 
def show_new_story_notification(story, category, upvotes)
  show_message("New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}")
end
 
def calculate_upvotes(story, category)
  upvotes = 1
 
  if story.downcase.include? 'cat'
    upvotes *= 5
  elsif story.downcase.include? 'bacon'
    upvotes *=8
  end
 
  if category.downcase.include? "cocaine"
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
 
 def get_stories_from_reddit
  reddit_stories = []
  reddit_data = JSON.load(RestClient.get('http://reddit.com/.json'))
  reddit_data['data']['children'].each do |child| 
    data     = child['data']
    title    = data['title']
    category = data['subreddit']
    upvotes  = calculate_upvotes(title,category)
    story    = build_story(title, category, upvotes)
   reddit_stories << story
  end
  reddit_stories
 end

 def get_stories_from_digg
  digg_stories = []
  digg_data = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))
  digg_data['data']['feed'].each do |feed| 
    data     = feed['content']
    title    = data['title']
    category = data['tags'].first['name']
    upvotes  = calculate_upvotes(title,category)
    story    = build_story(title, category, upvotes)
   digg_stories << story
  end
  digg_stories
 end

 def get_stories_from_mashable
   mashable_stories = []
   mashable_data = JSON.load(RestClient.get('http://mashable.com/stories.json'))
   mashable_data['new'].each do |story| 
  #  data     = story['content']
     title    = story['title']
     category = story['channel']
     upvotes  = calculate_upvotes(title,category)
     story    = build_story(title, category, upvotes)
     mashable_stories << story
   end
   mashable_stories
  end

 def display_stories_on_front_page
    print_stories(get_stories_from_mashable)
    print_stories(get_stories_from_reddit)
    print_stories(get_stories_from_digg)
 end

 def get_story_from_user
   show_message("Please enter a News title:")
   title = get_input
 
  show_message("Please give it a category:")
  category = get_input
  upvotes = calculate_upvotes(title, category)
 
  build_story(title, category, upvotes)
 end
 
def print_stories(stories)
  stories.each do |story|
    show_new_story_notification(story[:title], story[:category], story[:upvotes])
  end
end
 
#stories = []
#accepting_input = true
 
show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
#reddit_stories = get_stories_from_reddit
#digg_stories = get_stories_from_digg
 
#print_stories(display_stories_on_front_page)
display_stories_on_front_page