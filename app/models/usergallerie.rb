class Usergallerie < ApplicationRecord
  belongs_to :user
  has_many :usergallerycards
end
