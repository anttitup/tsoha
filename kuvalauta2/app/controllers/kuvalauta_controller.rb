class KuvalautaController < ApplicationController
  
  def index
    @images = Image.find_all_images
  end
 
  def comment
    Image.find(params[:id]).comments.create(params[:comment])    
    flash[:notice] = "Added your comment"
    redirect_to :action => "index", :id => params[:id]
  end
end
