class ClassifiedsController < ApplicationController

def index
	@classifieds = Classified.all
end

def new
	@classified = Classified.new
end

def create
	@classified = Classified.new(classified_params)

    if classified.save
      redirect_to edit_classified_path(classified)
    else
      redirect_to new_classified_path
    end
end

def classified_params
	params.require('classified').permit('category', 'title', 'description', 'price')
end

def update
end

def destroy
end

end


