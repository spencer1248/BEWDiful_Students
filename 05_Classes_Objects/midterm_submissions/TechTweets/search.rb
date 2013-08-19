class Search
	print `clear`
def self.get_query
	gets.chomp
end

def self.get
	keyword = get_query
  results = Twitter.search(keyword)
  puts Twitter::Version
  results.statuses.each do |result|
  puts result.text

	end
end
end


