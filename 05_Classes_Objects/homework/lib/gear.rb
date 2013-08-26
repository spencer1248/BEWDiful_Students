class Gear
	#Always wrap instance variables in accessor methods instead of directly
	#referring to variables
	attr_reader :chainring, :cog, :wheel

	def initialize(chainring, cog, wheel)
		@chainring = chainring
		@cog = cog
		@wheel = wheel
	end

	def ratio
		chainring / cog.to_f #accessor method use-GOOD
	end

	def ratio_bad_use_of_instance_variable
		@chainring / @cog.to_f #intance variable use--BAD
	end

	def gear_inches
		ratio * wheel.diameter
	end

	#temporarary solution short of creating a new class
	Wheel = Struct.new(:rim, :tire) do
		
		def diameter #method doesn't belong in gear: Gear should not be responsible
			#for calculating wheel diameter
			rim + (tire * 2)
		end
	end
end

class ObscuringReferences #Not well implemented
	attr_reader :data

	def initialize(data) #data complicated data structure returned by @data insantance variable
		@data = data	 #good for simple data but not good enough for complex data structure like array
	end

	def diameters #method knows too much about array, its doing too much.
		#it knows not only how to calculate diameter but also where to find rims and tires in the array
		#it explicitly knows that if it iterates of data that rims are at [0] tires at [1]
		#it depends upon the array, if array structure changes, diameters code must change
		data.collect {|cell| cell[0] + (cell[1] * 2) } 
	end
end

class RevealingReferences
	attr_reader :wheels

	def initialize(data)
		@wheels = wheelify(data)
	end

	def diameters #single responsibility not used
		#method has two responsibilities, iterates over array and calculates diameter
		wheels.collect {|wheel| wheel.rim + (wheel.tire * 2)} 
	end

	#breakup diameters method into two single responsibility methods

	#first diameter method iterates over array
	def diameters
		wheels.collect { |wheel| diameter(wheel)}
	end

	#second diameter method calculates diameter
	def diameter(wheel)
		wheel.rim + (wheel.tire * 2)
	end


	Wheel = Struct.new(:rim, :tire)
	def wheelify(data)
		data.collect { |cell| Wheel.new(cell[0], cell[1])}
	end
end

#Time for a Wheel Class

class Wheel
	attr_reader :rim, :tire

	def initialize(rim, tire)
		@rim = rim
		@tire = tire
	end

	def diameter(wheel)
		wheel.rim + (wheel.tire * 2)
	end

	def diameter
		rim + (tire * 2)
	end
	def circumference
		diameter * Math::PI
	end

end
@wheel = Wheel.new(26, 1.5)
puts Gear.new(52, 11, @wheel).gear_inches
