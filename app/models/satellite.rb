class Satellite < ApplicationRecord
  belongs_to :planet
  has_many :cards, as: :object
end
