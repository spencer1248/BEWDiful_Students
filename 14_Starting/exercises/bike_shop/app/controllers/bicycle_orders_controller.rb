class BicycleOrdersController < ApplicationController
  
  def new
  	@bicycle = BicycleOrder.new
  end

  def create
  	@bicycle_order = BicycleOrder.new(bicycle_order_params)
  	if @bicycle_order.save
  		redirect_to edit_bicycle_order_path(@bicycle_order)
  	else
  		render :new
  	end
  end

  def edit
  	@bicycle_order = BicycleOrder.find(params[:id])
  end

  private

  def bicycle_order_params
  	params.require(:bicycle_order).permit(:name, :wheels_id)
  end
end
