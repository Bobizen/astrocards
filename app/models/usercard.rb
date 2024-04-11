class Usercard < ApplicationRecord
  belongs_to :card
  belongs_to :user
  # has_many :cards

  after_commit :detect_bonus_cards, on: [:create]

  private

  def detect_bonus_cards
    @specials = Special.all
    @usercards = Usercard.where(user_id: user_id)

    # create a table with all card id owned by the user, from usercard
    @usercards_tab = []
    @usercards.each do |usercard|
      @usercards_tab << usercard.card.id
    end

    # loop on all the bonus cards
    @specials.each do |specialcard|
      special_tab = specialcard.card_ids.split("-").map(&:to_i)

      result = special_tab.all? { |id| @usercards_tab.include?(id) }
      if result
        # check if the bonus card already exists
        card = Card.where(object_id: specialcard.id, object_type: "Special")
        unless @usercards_tab.include?(card[0].id)
          # give the user a new bonus card
          new_usercard = Usercard.new(user_id: user_id, card_id: card[0].id)
          new_usercard.save
        end
      end
    end
  end
end
