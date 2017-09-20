class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    set_group
    set_current_user
  end

  def new
    @group = Group.new
    set_current_user
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      set_current_user
      @user.groups << @group
      redirect_to group_path(@group)
    else
      flash.now.notice = "Group name is required."
      set_current_user
      render :new
    end
  end

  def update
    set_group
    set_current_user
    @group.users << @user
    redirect_to @group
  end


  private
  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :description)
  end
end
