class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
  end

  def my_profile
    @user = current_user
    render :my_profile
  end

  def show
    @user = current_user
  end
end
