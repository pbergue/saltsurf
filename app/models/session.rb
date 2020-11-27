class Session < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  validates :spot_id, :user_id, :timestamp,  presence: true
end
