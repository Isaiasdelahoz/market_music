class AdvertisementsController < ApplicationController
  
  before_action :authenticate_user!, except: [:index, :show]
  before_action :load_advertisement, only: [:show, :edit, :destroy, :update]
  before_action :check_advertisement_owner!, only: [:edit, :update, :destroy] 

  def index 
    @advertisement = Advertisement.where("name LIKE ?", "%#{params[:search]}%")
  end

  def show 
    
  end 

  def new 
    @advertisement = Advertisement.new
    @advertisement.category_id = params[:category_id] if params[:category_id].present?
  end 
  
  def create 
    @advertisement = Advertisement.new(advertisement_params) 
    @advertisement.user_id = current_user.id

    if @advertisement.save 
    render :show
    else
      render :new
    end

    end 

  def edit 
    
  end
   
  def update
    @advertisement.update_attributes(advertisement_params) 
    render :show
  end 
  def destroy
    @advertisement = Advertisement.find(params[:id])
    @advertisement.destroy 
    redirect_to action: :index
  end 
  
  
  private

  def load_advertisement
    @advertisement = Advertisement.find(params[:id])
  end

  def check_advertisement_owner!
    unauthorized! unless @advertisement.belongs_to_user?(current_user)
  end 

  def advertisement_params
    params.require(:advertisement).permit(:price, :name, :description, :phone, :category_id, :ubication, :avatar, :user_id)
  end
end
