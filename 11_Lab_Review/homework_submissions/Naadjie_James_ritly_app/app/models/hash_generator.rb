class HashGenerator
	
	# attr_reader :url

	# def initialize(url_params)
	# 	@url = Url.new(url_params)
	# end

	def self.create(url)
		url.hash_code = SecureRandom.urlsafe_base64(4)
		url.save
	end
end