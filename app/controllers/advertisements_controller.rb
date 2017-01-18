class AdvertisementsController < ApplicationController
  
  before_action :authenticate_user!, except: [:index, :show]

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
    @advertisement = Advertisement.new(advertisement_params) 
    
    if @advertisement.save 
    render :show
    else
      render :new
    end

    end 

  def edit 
    @advertisement = Advertisement.find(params[:id])
  end
   
  def update
    @advertisement = Advertisement.find(params[:id])
    @advertisement.update_attributes(advertisement_params) 
    render :show
  end 
  def destroy
    @advertisement = Advertisement.find(params[:id])
    @advertisement.destroy 
    redirect_to action: :index
  end 

  private

  def advertisement_params
    params.require(:advertisement).permit(:price, :name, :description, :phone, :category_id, :ubication, :avatar)
  end
end
