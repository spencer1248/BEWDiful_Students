class User < ActiveRecord::Base

	def self.provider_hash(auth_hash)
		@provider = auth_hash[:provider]
		@uid = auth_hash[:uid]
		@name = auth_hash[:info][:name]

	end

	def self.find_or_create_from_auth_hash(auth_hash)
		provider_hash(auth_hash)

		user = where(provider: @provider, uid: @uid).first || create_user_from_auth_hash(auth_hash)
		# user =  if user.nil?
		user
	end

	def self.create_user_from_auth_hash(auth_hash)
		# provider = auth_hash[:provider]
		# uid = auth_hash[:uid]
		name = auth_hash[:info][:name]
		create!({provider: @provider, uid: @uid, name: @name })
	end
end
