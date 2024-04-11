class Usergallerycard < ApplicationRecord
  belongs_to :usergallerie
  belongs_to :usercard
  has_one :usersupport, dependent: :destroy
  # has_many :usercards
  # has_many :cards, through: :usercards
end
