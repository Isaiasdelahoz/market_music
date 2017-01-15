class AdvertisementsController < ApplicationController
  def index 
    @advertisement = Advertisement.all
  end

  def show 
    @advertisement = Advertisement.find(params[:id])
  end 

  def new 
    @advertisement = Advertisement.new
    @advertisement.category_id = params[:category_id] if params[:category_id].present?
  end 
  
  def create 
    @advertisement = Advertisement.create(advertisement_params) 
    render :show 
  end 

  private

  def advertisement_params
    params.require(:advertisement).permit(:price, :name, :description, :phone, :category_id)
  end
end
