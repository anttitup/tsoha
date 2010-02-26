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
    @images=Image.search params[:search]
  end
  
  def show_results
    @image = Image.find(params[:image])
  end
end
