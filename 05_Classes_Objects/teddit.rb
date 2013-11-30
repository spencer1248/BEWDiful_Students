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
  elsif story.downcase.include? 'cocaine'
    upvotes *=8
  end
 
  if category.downcase.include? "food"
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
  s1 = []
  reddit_response = RestClient.get('http://www.reddit.com/.json')
  reddit_data     = JSON.load(reddit_response)
  
  reddit_data['data']['children'].each do |child|

    data = child["data"]
    
    title = data["title"]
    category = data["subreddit"]
    
    upvotes = calculate_upvotes(title, category)
    
    story = build_story(title, category, upvotes)

    s1 << story
  end

  s1
end

# def get_stories_from_digg
#   s2 = []
#   digg_response = RestClient.get('http://digg.com/api/news/popular.json')
#   digg_data     = JSON.load(digg_response)
  
#   digg_data['data']['feed'].each do |flash|

#     data = flash["content"]
    
#     title = flash["content"]["title_alt"]
#     category = flash["tags"]["display"]
    
#     upvotes = calculate_upvotes(title, category)
    
#     story = build_story(title, category, upvotes)

#     s2 << story
#   end 
  
#   s2
# end

# def get_stories_from_mashable
#   s3 = []
#   mashable_response = RestClient.get('http://mashable.com/stories.json')
#   mashable_data     = JSON.load(mashable_response)
  
#   mashable_data['new'].each do |article|
    
#     title = article["title"]
#     category = article["channel"]
    
#     upvotes = calculate_upvotes(title, category)
    
#     story = build_story(title, category, upvotes)

#     s3 << story
#   end

#   s3
# end
 
def print_s1
  stories.each do |story|
    show_new_story_notification(story[:title], story[:category], story[:upvotes])
  end
end

# def print_s2
#   stories.each do |story|
#     show_new_story_notification(story[:title], story[:category], story[:upvotes])
#   end
# end

# def print_s3
#   stories.each do |story|
#     show_new_story_notification(story[:title], story[:category], story[:upvotes])
#   end
# end

 
show_message("Welcome to Teddit! a text-based news aggregator. Get today's news tomorrow!")
 
s1 = get_stories_from_reddit
# s2 = get_stories_from_digg
# s3 = get_stories_from_mashable


print_s1(s1)
# print_s2(s2)
# print_s3(s3)
end
