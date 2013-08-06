require_relative 'lib/story_board' #creates a link to the StoryBoard class.
require_relative 'lib/interface_manager' #creates link to InterfaceManager class

InterfaceManager.new

loop do
  InterfaceManager.show_menu
  choice = InterfaceManager.get_choice
  if choice == 1 || choice == 2
    StoryBoard.show_full_of(choice)
  elsif choice ==  3 
    break
  else
    p "Invalid Selection"
  end
end

puts "Thank you for using Tech News Aggreggator!"

