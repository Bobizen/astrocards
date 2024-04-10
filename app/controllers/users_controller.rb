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
    @user = User.find(current_user.id)
    @usercards = Usercard.where(user: @user)
    usercard_ids = @usercards.pluck(:card_id)
    puts "liste des ids des cards détenues"
    puts usercard_ids

    @planets = Card.where.not(object_type: "Special").where.not(id: usercard_ids).order("RANDOM()").limit(2)
    puts "liste au choix"
    puts @planets
    @planets.each do |card|
      usercard = Usercard.new
      usercard.user = @user
      usercard.card = card
      usercard.save
    end

    # @satellites = Card.where(object_type: "Satellite").order("RANDOM()").limit(1)
    # @satellites.each do |card|
    #   usercard = Usercard.new
    #   usercard.user = @user
    #   usercard.card = card
    #   usercard.save
    # end
    data = { planet: @planets[0].object, satellite: @planets[1].object }
    render json: data
  end
end
