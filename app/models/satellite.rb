class Satellite < ApplicationRecord
  has_many :cards, as: :object
end
