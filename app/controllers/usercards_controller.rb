class UsercardsController < ApplicationController
  def index
    @usergallery = Usergallerie.where(user: current_user).first
    @usercards = Usercard.where(user: current_user)
  end

  def detail
    @usergallery = Usergallerie.where(user: current_user).first
    @card = Usercard.find(params[:usercard_id])
  end

  def bonuscard
    @card = Usercard.where(user: current_user).first
  end
end
