class SecretNumber
	attr_reader :value

	def initialize(range=10)
        @range = range

		set_random_value
	end

	def set_random_value
		@value = Random.rand(@range) + 1
	end

	def is?(value)
		@value == value
	end

    def is_not?(value)
        !is?(value)
    end

	def greater_than?(value)
		@value > value
	end
end