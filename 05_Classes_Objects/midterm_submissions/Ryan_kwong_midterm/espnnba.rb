# Back-End Web Development

# MIDTERM REQUIREMENTS

# Create a command line based application that fulfills these criteria:

# Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
# Connects to a 3rd party api where the call varies based on what the user gives you.
# Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
# Push code on Github.
# GRADING

# Your midterm is considered completed if it meets all requirements above. Your instructor and T.A will provide you with feedback.

# API Ideas:

# omdapi.com
# Twitter search api

# We're going to add a remote data source to pull in stories, Digg and Mashable.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'json'
require 'rest-client'
require_relative 'lib/story' 
require_relative 'lib/story_board' 
require_relative 'lib/calcup'
require_relative 'lib/remote_source' 
require_relative 'lib/remote_mash'

def show_menu
  puts "Would you like to:"
  puts "1. Get stories from ESPN NBA"
  puts "2. Get stories from Mashable"
  puts "3. Add your own story"
  puts "4. Exit"
end

def nba_loop

  loop do
  choice = gets.to_i
    if choice == 1
      RemoteSource.new.add_remote_stories

    elsif choice == 2
      RemoteMash.new.add_remote_stories_mash
      
    elsif choice == 3
      add_manual_stories

    elsif choice ==  4 
      break
    else
      puts "Invalid Selection : Please select again"
      
    end
    show_story_board
    show_menu
  end
end

def add_manual_stories
  puts "Please enter a News story:"
  title = gets.chomp
  puts "Please give it a category:"
  category = gets.chomp
  upvotes = CalcUp.new

  StoryBoard.add_story(Story.new(title, category,upvotes.calc_upvotes(title, category)))

end

def show_story_board
  StoryBoard.stories.each do |story| 
    puts story 
  end
end

puts "Welcome to ESPN NBA! a text based nba news aggregator. Get today's nba news tomorrow!"
show_menu
nba_loop
puts "Thanks for viewing/adding to the story board"
