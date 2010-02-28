class LogController < ApplicationController
   
  def login
      if request.post? 
        user = User.authenticate(params[:name], params[:password]) 
        if user 
          session[:user_id]=user.id
          redirect_to root_path
        else
          flash[:notice]= "cannot authenticate"
          redirect_to :controller=>:log, :action =>"login"
        end
      end
  end

  

 def logout
  session[:user_id]=nil
  redirect_to :controller =>:kuvalauta, :action=>"index"
 end
 
end
