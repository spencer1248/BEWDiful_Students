require_relative 'lib/story' #creates a link to the Story class.
require_relative 'lib/story_board' #creates a link to the StoryBoard class.
require_relative 'lib/remote_source' #creates a link to RemoteSource class

def show_message(message)
  puts message
end

def get_input #Gets the input option
  gets.chomp 
end

def get_choice #Makes sure that choice is a number
  gets.to_i
end

def show_menu
  show_message "Would you like to:"
  show_message "1. Get stories from Mashable"
  show_message "2. Exit"
end

def add_remote_stories
  RemoteSource.get.each do |story|
    StoryBoard.add_story story #adds story to an array of stories.
  end
end

def show_story_board
  StoryBoard.stories.each do |story| #StoryBorad.stories returns an array of stories
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
  # elsif choice == 2
  #   add_manual_stories
  #   show_story_board
  #   show_menu
  elsif choice ==  3 
    break
  else
    show_message "Invalid Selection"
    show_menu
  end
end

puts "You have quit the news reader app - Goodbye!"
