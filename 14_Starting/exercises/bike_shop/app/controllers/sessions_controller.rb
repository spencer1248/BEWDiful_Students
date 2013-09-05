class SessionsController < ApplicationController

	def create
		raise auth_hash.to_yaml
	end

	protected

	def auth_hash
		request.env['omniauth.auth']
	end
end
