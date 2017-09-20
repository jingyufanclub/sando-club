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
    @group = Group.first
    if @user.save
      @user.groups << @group
      redirect_to user_path(@user)
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
