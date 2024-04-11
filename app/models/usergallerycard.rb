class Usergallerycard < ApplicationRecord
  belongs_to :usergallerie
  belongs_to :usercard
  has_one :usersupport, dependent: :destroy
end
