class UsercardsController < ApplicationController
  def index
  end

  def detail
    @card = Usercard.where(user: current_user).first
  end
end
