$:.unshift (File.dirname(__FILE__))
require 'lib/Search_sc'

prompt = SearchSc.new

prompt.welcome
prompt.search
prompt.display_query
prompt.continue_search

# puts "search again? enter yes or no"
# input = gets.chomp

# if input.downcase! == "yes"
# 	loop do
# 		prompt.search
# 		prompt.display_query
# 	end
# elsif input.downcase! == "no"
# 	exit
# end
