class UsersController < ApplicationController
  def index

  end

  def show
    set_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email.downcase!
    if @user.save
      session[:user_id] = @user.id
      @user.groups << Group.first
      redirect_to @user
    else
      flash.now.notice = "Missing information."
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :bio, :password, :password_confirmation)
  end
end
