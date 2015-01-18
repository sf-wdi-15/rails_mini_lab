class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.confirm(*login_params)
    if user
      login(user)
      redirect_to user_path(user)
    else 
      redirect_to login_path
    end
  end

  private
    def login_params
      user = params.require(:user)
      [user[:email], user[:password]]
    end
end
