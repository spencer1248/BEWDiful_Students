require_relative 'Twitter.configure.rb'
require_relative 'search.rb'

# def search(q, options={})
#   Twitter.search(q)
# end
def new_query
		Search.get
end





puts "Welcome to EmployToy! search twitter for job openings.\nPLease enter a keyword you would like to search for"

loop do
new_query

puts "Would you like to seach for something else?"
end

# require_relative 'search.rb'