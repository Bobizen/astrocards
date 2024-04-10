class Usercard < ApplicationRecord
  belongs_to :card
  belongs_to :user

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
    puts "tab of usercards"
    puts @usercards_tab

    # loop on all the bonus cards
    @specials.each do |specialcard|
      special_tab = specialcard.card_ids.split("-").map(&:to_i)
      puts "tab of specials card"
      puts special_tab

      result = special_tab.all? { |id| @usercards_tab.include?(id) }
      if result
        # check if the bonus card already exists
        card = Card.where(object_id: specialcard.id, object_type: "Special")
        unless @usercards_tab.include?(card[0].id)
          # give the user a new bonus card
          puts "new bonus added to usercard"
          new_usercard = Usercard.new(user_id: user_id, card_id: card[0].id)
          new_usercard.save
        end
      end
    end
  end
end
