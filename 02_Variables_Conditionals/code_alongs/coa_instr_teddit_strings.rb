#TEDDIT:  Strings
<<<<<<< HEAD
=======
#TIME: 15 min
#INSTRUCTIONAL DESIGN NOTES: 
# => We take an incremental approach so students can build on their understanding of strings.
# => Each version below, adds complexity to Teddit. Comment out each version before running the next.

>>>>>>> upstream/master

#Version 1 - Welcome the user to Teddit, print the first story to the terminal.
###########
###########
<<<<<<< HEAD
=======
# 
puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
puts 'Story: Man raised by wolverines, then eaten Current upvotes: 4'

>>>>>>> upstream/master

#Version 2 - Replace the story title and upvotes with variables.
###########
###########
<<<<<<< HEAD
=======
##Swap out the story and upvotes for variables
##Show casting error
#
#puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
#puts 'Story: Man raised by wolverines, then eaten Current upvotes: 4'
#
#story = 'Cat makes fortune by showing elderly how to play dice'
#upvotes = 7
#puts 'Story: ' + story
#puts 'Story: ' + story + ' Current upvotes: ' + upvotes

#Woot error!
#Talk about mixing type and casting. Numbers have methods so we can call #to_s

>>>>>>> upstream/master

#Version 3 - Add data type casting (fix casting issue).
###########
###########
<<<<<<< HEAD
=======
##Fix casting issue
#
#puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
#puts 'Story: Man raised by wolverines, then eaten Current upvotes: 4'
#
#story = 'Cat makes fortune by showing elderly how to play dice'
#upvotes = 7
#puts 'Story: ' + story + ' Current upvotes: ' + upvotes.to_s

>>>>>>> upstream/master

#Version 4 - Use string interpolation and escape characters, polish the output.
###########
###########
<<<<<<< HEAD
=======
##Remove need to escape single quotes by using Double quoted strings
##Introduce Interpolation
##Introduce \n and \t
#
#puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
#puts "Story: Man raised by wolverines, then eaten Current upvotes: 4"
#
#story = "Cat makes fortune by showing elderly how to play dice"
#upvotes = 7
#puts "Story: #{story.capitalize} \nCurrent upvotes: \t#{upvotes}"
>>>>>>> upstream/master

#Version 5 - Adding methods
###########
###########
<<<<<<< HEAD
=======
#def show_title(title)
  #puts title
#end
#
#def show_story(story, upvotes)
  #puts "Story: #{story.capitalize} Current upvotes: #{upvotes}"
#end
#
#show_title("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
#
#story1 = "Cat makes fortune by showing elderly how to play dice"
#story1_upvotes = 7
#
#story2 = "Man raise by wolverines, then eaten"
#story2_upvotes = 4
#
#show_story(story1, story1_upvotes)
#show_story(story2, story2_upvotes)


>>>>>>> upstream/master
