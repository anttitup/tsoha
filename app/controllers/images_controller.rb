class ImagesController < ApplicationController
  # GET /images
  # GET /images.xml
  before_filter :authorized, :except=> [:index, :show]
 
 def index
    @images = Image.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @images }
    end
  end

  # GET /images/1
  # GET /images/1.xml
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/new
  # GET /images/new.xml
  def new
    @image = Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image }
    end
  end

 
  # POST /images
  # POST /images.xml
  def create
    @image = Image.create(params[:image]) do |i|
      i.user_id = session[:user_id]
    end
    redirect_to root_path
  end


  # DELETE /images/1
  # DELETE /images/1.xml
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to :controller => 'kuvalauta' }
      format.xml  { head :ok }
    end
  end

  
end
