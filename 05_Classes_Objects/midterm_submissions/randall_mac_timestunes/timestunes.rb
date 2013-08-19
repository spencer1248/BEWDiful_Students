require_relative 'remote_rh'
require_relative 'remote_qotsa'
require_relative 'remote_nin'
require_relative 'story'
require_relative 'new_stories'

# class Timestunes

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
       show_message "1. Find stories that mention Radiohead"
       show_message "2. Find stories that mention Queens of the Stone Age"
       show_message "3. Find tweets that mention Nine Inch Nails"
       show_message "4. Find stories that mention another band"
       show_message "5. Compose your own story"
       show_message "6. Exit"
     end

     def add_radiohead_stories
        RemoteRh.get.each do |story|
        NewStories.add_story story
       end
     end

     def add_qotsa_stories
        RemoteQotsa.get.each do |story|
        NewStories.add_story story
      end
     end

     def add_nin_stories
        RemoteNin.get.each do |story|
        NewStories.add_story story
      end
     end

    def add_new_story
       show_message("Type away:")
       story = get_input
       show_message("Add your byline:")
       byline = get_input
       show_message("Add the date YYYYMMDD:")
       date = get_input
       show_message("Add a URL if you like:")
       url = get_input
       NewStories.add_story(Story.new(story, byline, date, url))
    end

    def show_new_stories
       NewStories.stories.each do |story|
       show_message story 
     end
    end

   show_message("Welcome to Timestunes, a NY Times music search engine with a difference! Author: Mac Randall")
   show_menu
   loop do
   choice = get_choice
   if choice == 1
    add_radiohead_stories
    show_new_stories
    show_menu
   elsif choice == 2
  	add_qotsa_stories
  	show_new_stories
  	show_menu
   elsif choice == 3
  	add_nin_stories
  	show_new_stories
  	show_menu
   elsif choice == 4
  	show_message "Sorry, this is a fake option."
  	show_menu
   elsif choice == 5
    add_new_story
    show_new_stories
    show_menu
   elsif choice == 6 
    break
   else
    show_message "Invalid choice. Please try again."
    show_menu
    end
  end
# end

puts "Thank you for using Timestunes."

