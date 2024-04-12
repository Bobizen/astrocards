class Planet < ApplicationRecord
  belongs_to :star
  has_many :cards, as: :object
  has_many :satellites
end
