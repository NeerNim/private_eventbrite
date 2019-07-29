class UsersController < ApplicationController
before_action :logged_in_user, only: [:index ]
before_action :correct_user, only: [ :show ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome Eventbrite!"
      log_in @user
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @past_events = @user.attended_events.past.order(date: :desc)
    @future_events = @user.attended_events.upcoming.order(date: :desc)
  end

 

  private
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end

   def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please Log in."
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(login_url) unless current_user?(@user)
  end
end
