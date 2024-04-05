class UsercardsController < ApplicationController
  def index
    @usercards = Usercard.where(user: current_user)
  end
end
