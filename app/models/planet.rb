class Planet < ApplicationRecord
  has_many :cards, as: :object
end
