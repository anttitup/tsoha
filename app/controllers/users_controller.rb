class UsersController < ApplicationController
  before_filter :authorized, :except=> [:new,:create]

  def show
    @user = User.find params[:id]
  end
  
  def new
    @user = User.new
  end

  
  def edit
    @user = User.find params[:id]     
    if request.post?
      if @user.update_attributes params[:user]
        redirect_to user_path
      end
    end
  end 

  def create
    @user = User.new params[:user]
      if @user.save
         redirect_to user_path @user
      else  
         redirect_to new_user_path
      end
  end

  def update
    @user = User.find_by_id params[:id]
    redirect_to user_path
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
  end 
end
