class UsercardsController < ApplicationController
  def index
    @usergallery = Usergallerie.where(user: current_user).first
    @usercards = Usercard.where(user: current_user)

    # missing cards
    usercard_ids = @usercards.pluck(:card_id)
    @missingcards = Card.where.not(object_type: "Special").where.not(id: usercard_ids)
  end

  def detail
    @usergallery = Usergallerie.where(user: current_user).first
    @card = Usercard.find(params[:usercard_id])
  end

  def bonuscard
    # @card = Usercard.where(user: current_user).first
    @usergallery = Usergallerie.where(user: current_user).first
    @card = Usercard.find(params[:usercard_id])
    @cardcard = Card.find(@card.card_id)
    @bonuscard = Special.find(@cardcard.object_id)

    @cards_in_bonus = @bonuscard.card_ids.split("-").map(&:to_i)
  end
end
