class Star < ApplicationRecord
  has_many :cards, as: :object
end
