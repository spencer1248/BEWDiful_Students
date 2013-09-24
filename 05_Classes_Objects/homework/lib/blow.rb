# class Node
# 	attr_reader :key, :left, :right

# 	def initilize(key, left=nil, right=nil)
# 		@key = key
# 		@left, @right = left, right
# 	end

# 	def <<(key)
# 		if key < @key
# 			@left.nil? ? @left = Node.new(key) : @left.insert(key)
# 		elsif key > @key
# 				@right.nil? ? @right = Node.new(key) : @right.insert(key)
# 		end
# 	end
# end

# class BinaryTree
# 	include Node
# 	include Enumerable
# 	attr_reader :root

# 	def initialize
# 		@root = nil
# 	end

# 	def <<(element)
# 	end


# end

#  class BinaryTree
#    include Enumerable
#    @root = []
#    def initialize(root)
#     @root = root
#    end
#    def <<(key)
#     @root.push(key)
#     end
#   def empty?
#      @root.all?
#    end

#    def each
#    	@root.each {|s| yield s}
#    end
#   end

# module Enumerable
# 	def each_with_custom_index(start,step)
# 		self.each_with_index do |elt,index|
# 			yield elt, start + index * step
# 		end
# 	end

# 	def each_with_flattening
# 		self.each do |elt|
# 			if elt.is_a?Array
# 				elt.each_with_flattening { |s| yield s}
# 			else
# 				yield elt
# 			end
# 		end
# 	end
		
# end



# %w(alice carol bob).each_with_custom_index(3,2) {|p,i| puts "#{p} is num #{i}"}
# [1,[2,3],4,[5,6],7].each_with_flattening {|n| print "#{n}, " }
