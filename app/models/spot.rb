class Spot < ApplicationRecord
  has_many :favorites
  has_many :sessions
  has_many :forecasts
  has_many_attached :photos

  validates :latitude, :longitude, :name, :description, presence: true
  geocoded_by :name
  # after_validation :geocode, if: :will_save_change_to_name?

end
