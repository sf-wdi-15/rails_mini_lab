class UsersController < ApplicationController
  before_action :logged_in?, only: [:show, :edit, :index]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by({id: params[:id]})
    @articles = @user.articles
    unless @user 
      redirect_to "/users"
    end
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    unless user.save()
      redirect_to sign_up_path
    else
      login(user)
      redirect_to user_path(user)
    end
  end

  def edit
    @user = current_user
  end

  private

    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
    end
end
