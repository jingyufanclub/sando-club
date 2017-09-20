class LunchdatesController < ApplicationController

  def index

  end

  def show
    set_lunchdate
    set_current_user
  end

  def new
    @lunchdate = Lunchdate.new
    set_current_user
    @groups = @user.groups
  end

  def create
    @lunchdate = Lunchdate.new(lunchdate_params)
    if @lunchdate.save
      set_current_user
      @user.lunchdates << @lunchdate
      redirect_to @lunchdate
    else
      set_current_user
      @groups = @user.groups
      render :new
    end
  end

  def update
    set_lunchdate
    set_current_user
    @lunchdate.users << @user
    redirect_to @lunchdate
  end

  private

  def set_lunchdate
    @lunchdate = Lunchdate.find(params[:id])
  end

  def lunchdate_params
    params.require(:lunchdate).permit(:date, :time, :group_id, :place, :longitude, :latitude)
  end

end
