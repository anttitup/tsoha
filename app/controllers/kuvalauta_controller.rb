class KuvalautaController < ApplicationController
  
  def index
    @images = Image.all 
  end
 
  def comment
    Image.find(params[:id]).comments.create(params[:comment])    do |i|
      i.user_id= session[:user_id]
    end
    redirect_to :action => "index", :id => params[:id]
  end
  
  def search
    @images=Image.find_by_name params[:search]
    redirect_to :action => "index"
  end
  
  def find_pictures_by_uploader
       redirect_to :action => "index"
  end

  def show
    @image = Image.find(params[:id])
  end
end
