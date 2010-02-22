# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

layout "kuvalauta"

protected
  def authorized
   unless User.find_by_id(session[:user_id]) 
      redirect_to :controller => 'log' , :action => 'login'
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
