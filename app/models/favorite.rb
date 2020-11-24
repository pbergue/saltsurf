class Favorite < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  validates :spot_id, :user_id,  presence: true

end
