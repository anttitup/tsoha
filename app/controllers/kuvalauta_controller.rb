class KuvalautaController < ApplicationController
  
  def index
    @images = Image.find_all_images
  end
 
  def comment
    Image.find(params[:id]).comments.create(params[:comment])    
    flash[:notice] = "Added your comment"
    redirect_to :action => "index", :id => params[:id]
  end

  def search_by_name (name)
    @images = Image.find_all_by_name(name)
    redirect_to(@image)
  end

  def show
    @image = Image.find(params[:id])
  end
end
