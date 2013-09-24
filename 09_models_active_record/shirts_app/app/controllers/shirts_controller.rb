class ShirtsController < ApplicationController
	def index
		@shirts = Shirt.all
	end


	def new
		@shirt = Shirt.new
	end

	def create
		@shirt = Shirt.new(params[:shirt])
		if @shirt.save
			 redirect_to "shirt_path"
		else
			render :new
		end
	end

	def show
		@shirt = params[:id]
	end

	def search
		@query = params[:q]
		@shirts = Shirt.where('name LIKE ?', @query)
		render 'shirt_search'
	end

	private

	#control params from forms
	def shirt_params
		params.require(:shirt).permit(:name, :description)
	end
end
