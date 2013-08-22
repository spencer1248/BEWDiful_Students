class UrlsController < ApplicationController
	before_filter :generated_code_value, only: [:redirectors, :preview]
  def new
  	@url = Url.new
  end

  def show
  	@url = Url.find(params[:id])
  end

  def create
  	@url = Url.new(url_params)
  	if @url.save
  		redirect_to url_path(@url)
  	else
  		render :new
  	end
  end

  def redirectors
  	redirect_to "http://#{@url.link}"
  	count = @url.count+1
  	@url.update(:count => count)
  end

  def preview
  end

  private

  def url_params
  	params.require(:url).permit(:link)
  end

  def generated_code_value
  	@generated_code = params[:some_totally_random_value]
  	@url = Url.find_by_hash_code(@generated_code)
  end

  #  def click_count
  # 	generated_code_value
  	
  # end

end
