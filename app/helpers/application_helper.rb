# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def current_user_id
    session[:user_id]
  end
end
