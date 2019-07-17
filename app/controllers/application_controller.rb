class ApplicationController < ActionController::Base
  def log_in(user)
    cookies.signed[:id] = id
  end
end
