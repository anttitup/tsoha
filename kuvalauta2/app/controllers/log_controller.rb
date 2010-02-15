class LogController < ApplicationController
   
  def login
     if request.post?
      user = User.authenticate(params[:name], params[:password]) 
      if user
        session[:user_id]=user.id
        redirect_to :controller =>"kuvalauta", :action =>"index"
      else
        flash[:notice]= "et voinut kirjautua" 
      
      end
    end
  end

  

 def logout
  session[:user_id]=nil
  redirect_to :controller =>:kuvalauta, action=>"index"
 end
 
end
