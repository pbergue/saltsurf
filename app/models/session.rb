class Session < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  validates :spot_id, :user_id, :title, :description, :rating, :timestamp,  presence: true

end
