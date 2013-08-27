class UrlsController < ApplicationController

	def index
		@urls = Url.all

		@url = Url.new

		#url.id = redirect_to edit_url_path
	end

	def search
		@query = params[:hash_code]

		@urls = Url.where("link LIKE ? or hash_code LIKE ?", "#{@query}%", "#{@query}%")

		render 'urls_search'
	end


	def show
		#@url = Url.find(params[:id])
		@url = Url.new
	end

	def new
		@url = Url.new
	end

	def create
		url = Url.new(url_params)

		if url.save
			redirect_to urls_path
		else
			flash[:alert] = url.errors.full_messages.to_sentence
			redirect_to new_url_path
		end
	end

	def edit
		@url = Url.find(params[:id])
	end

	def update
		url = Url.find(params[:id])

		if url.update_attributes(url_params)
			redirect_to urls_path(url)
		else
			flash[:alert] = url.errors.full_messages.to_sentence
		 redirect_to edit_url_path(url)
		end
	end

	def destroy
		url = Url.find(params[:id])

		url.destroy

		redirect_to urls_path
	end

	def urls
		#@urls = Urls.all
	end

	def redirectors
		@hash_code = params[:some_totally_random_value]
		#redirect_to original weblink somehow - can redirect_to outside of your app
		#redirect_to params[:url]
		@url_object = Url.where(hash_code: @hash_code).first
		@url = @url_object.link 
		redirect_to @url
	end

	def preview
		@hash_code = params[:some_totally_random_value]
		@url_object = Url.where(hash_code: @hash_code).first
		@url = @url_object.link
	end

	private

	def url_params
		params.require(:url).permit(:link, :hash_code)
	end


end
