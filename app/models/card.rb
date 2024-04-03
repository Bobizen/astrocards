class Card < ApplicationRecord
  belongs_to :object, polymorphic: true
end
