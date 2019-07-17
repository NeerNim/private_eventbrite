class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(id: params[:session][:id])
    if user
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid user ID'
      render 'new'
    end
  end
end
