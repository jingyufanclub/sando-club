class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :set_current_user, :is_user_in_group?, :is_user_going_on_date?


  private

    def is_user_in_group?(user, group)
      user.groups.include?(group)
    end

    def is_user_going_on_date?(user, lunchdate)
      lunchdate.users.include?(user)
    end

    def current_user
      session[:user_id]
    end

    def set_current_user
      @user = User.find(current_user)
    end

    def authorize_user
      if !logged_in?
        redirect_to root_path
      end
    end

    def logged_in?
      !!session[:user_id]
    end


end
