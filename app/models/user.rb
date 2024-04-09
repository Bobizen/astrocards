class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :usercards
  has_many :usergalleries
  has_one_attached :avatar
  after_commit :give_initial_cards, on: [:create]

  has_many :usercards, dependent: :destroy
  has_one :usergallerie, dependent: :destroy

  # Validation for mandatory acceptance of privacy statement
  validates :privacy_statement, acceptance: true
  # Custom validation for password complexity
  validate :password_complexity

  private

  def password_complexity
    return unless password.present? && !password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W\_]).{8,}$/)
    errors.add :password, 'must include at least one lowercase letter, one uppercase letter, one digit, and one special character.'
  end

  # when the user is created, it gives to the user 4 cards randomly
  # TODO: select among all the cards but the bonus ones
  def give_initial_cards
    @user = self
    @cards = Card.order("RANDOM()").limit(4)
    @cards.each do |card|
      usercard = Usercard.new
      usercard.user = @user
      usercard.card = card
      usercard.save
    end
    # create the gallery
    gallery = Usergallerie.new
    gallery.user = @user
    gallery.save
  end
end
