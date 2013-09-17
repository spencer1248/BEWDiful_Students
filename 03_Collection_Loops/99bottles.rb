# 99.downto(1) do |x|
#  	if x > 1
# 		puts "#{x} bottles of beer on the wall"
# 		puts "#{x} bottles of beer!"
# 		puts "You take one down and pass it around,"
# 		puts "#{x-1} bottles of beer on the wall"
#  	else
# 		puts "#{x-1} bottle of beer on the wall"
# end
# # else
# # 	puts "#{x} bottle of beer on the wall"
# # 	puts "#{x} bottle of beer!"
# # 	puts "You take one down and pass it around,"
# # 	puts "No more bottles of beer on the wall! :-("
# # end



# def bottle_s(n)
#   (b == 1) ? "bottle" : "bottles"
# end
 
 
# 99.downto(1){|b|
#   puts "#{b} #{bottle_s(b)} of beer on the wall"
#   puts "#{b} #{bottle_s(b)} of beer!"
#   puts "You take one down and pass it around,"
#   puts "#{b-1} #{bottle_s(b-1)} of beer on the wall" unless b ==1
# }
# puts "No more bottles of beer on the wall :-("

puts "99 bottles of beer on the wall! 
99 bottles of beer! 
You take one down and pass it around" 
98.downto(2) do |bottles| 
puts "#{bottles} bottles of beer on the wall! 
#{bottles} bottles of beer on the wall! 
#{bottles} bottles of beer! 
You take one down and pass it around,"
end 
puts "1 bottle of beer on the wall!
1 bottle of beer on the wall!
1 bottle of beer!
You take one down and pass it around,
No more bottles of beer on the wall! :-("
