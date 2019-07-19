class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
    current_user
  end
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id]) 
    end 
  end
  
  helper_method :current_user

end
