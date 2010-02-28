class ImagesController < ApplicationController
  before_filter :authorized, :except=> [:index, :show]
 
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

 
  def create
  #raise params[:image].inspect
    @image = Image.new(params[:image])
      if @image.save
        redirect_to root_path
      else 
        redirect_to new_user_image_path(current_user_id)    end
  end
  


  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to root_path
  end

  
end
