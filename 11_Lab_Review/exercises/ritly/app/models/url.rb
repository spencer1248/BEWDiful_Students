class Url < ActiveRecord::Base

	def generate_with_hash
		self.hash_code = HashGenerator.create(self)
	end
end
