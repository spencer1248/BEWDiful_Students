class UrlsController < ApplicationController

	def index
		@urls = Url.all
	end

	def new
		@url = Url.new
	end

	def create 
		safe_url = params.require(:url).permit(:link)
		@url = Url.new safe_url
		@url.hash_code = get_unique_hash
		@url.save
      	redirect_to @url
	end

	def show
		@url = Url.find params[:id]
    	@full_path = "#{request.host_with_port}/#{@url.hash_code}"
	end

	def redirectors
		@url = Url.find_by hash_code: params[:some_totally_random_value]
		if @url
			redirect_to @url.link
		else
			redirect_to root_path 
		end
	end

	def preview
		@url = Url.find_by hash_code: params[:some_totally_random_value]
   		redirect_to root_path unless @url
	end

	private
	
	def get_unique_hash
		hash = SecureRandom.urlsafe_base64(8) 
		duplicate = Url.find_by hash_code: hash 
		if duplicate
			get_unique_hash
		else
			hash 
		end
	end
end