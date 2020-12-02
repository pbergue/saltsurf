class Session < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  validates :spot_id, :user_id, :timestamp,  presence: true
  validates :rating,  numericality: { greater_than: 0, less_than_or_equal_to: 5 }
end
