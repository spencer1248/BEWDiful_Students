class Url < ActiveRecord::Base
	
before_create :create_hash_code



private
	def create_hash_code
		self.hash_code = SecureRandom.urlsafe_base64(4)
	end
end
