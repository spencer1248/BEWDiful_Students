module Enumerable
	def each_with_custom_index(start,step)
		self.each_with_index do |elt,index|
			yield elt, start + index * step
		end
	end

	def each_with_flattening
		self.each do |elt|
			if elt.is_a?Array
				elt.each_with_flattening { |s| yield s}
			else
				yield elt
			end
		end
	end
		
end

%w(alice carol bob).each_with_custom_index(3,2) {|p,i| puts "#{p} is num #{i}"}
[1,[2,3],4,[5,6],7].each_with_flattening {|n| print "#{n}, " }
