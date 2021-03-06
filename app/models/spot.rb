class Spot < ApplicationRecord
  has_many :favorites
  has_many :sessions
  has_many :forecasts
  has_many :tides
  has_many_attached :photos

    validates :latitude, :longitude, :name, :description, presence: true
  geocoded_by :name
  # after_validation :geocode, if: :will_save_change_to_name?


  def forecast_today
    forecasts.where(source: "Météo-France")
             .where(timestamp: (Time.now.utc.beginning_of_day + 8.hours))
             .limit(1)
             .take
  end

end
