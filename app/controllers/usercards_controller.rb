class UsercardsController < ApplicationController
  def index
    @usercards = Usercard.where(user: current_user)
  end

  def detail
    @card = Usercard.where(user: current_user).first
  end
end
