class Star < ApplicationRecord
  has_many :cards, as: :object
  has_many :planets
end
