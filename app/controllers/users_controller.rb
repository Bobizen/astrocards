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

  def new_card
    @planets = Card.where(object_type: "Planet").order("RANDOM()").limit(1)
    @planets.each do |card|
      usercard = Usercard.new
      usercard.user = @user
      usercard.card = card
      usercard.save
    end

    @satellites = Card.where(object_type: "Satellite").order("RANDOM()").limit(1)
    @satellites.each do |card|
      usercard = Usercard.new
      usercard.user = @user
      usercard.card = card
      usercard.save
    end
    data = { planet: @planets[0].object, satellite: @satellites[0].object }
    render json: data
  end
end
