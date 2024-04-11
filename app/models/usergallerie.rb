class Usergallerie < ApplicationRecord
  belongs_to :user
  has_many :usergallerycards
  has_many :usercards, through: :usergallerycards
  # has_many :cards, through: :usercards
end
