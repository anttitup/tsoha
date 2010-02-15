# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :authorized, :except=> [:login, :kuvalauta]
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

protected
  def authorized
    if User.find_by_id(session[user_id])
      redirect_to :controller=> :kuvalauta, :action=> :index
    else
      redirect_to :controller => :log, :action => :login
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
