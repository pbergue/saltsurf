class Forecast < ApplicationRecord
  belongs_to :spot

  validates :spot_id, :source, :timestamp, presence: true
  validates :wave_height, :wind_direction, :wind_speed, :swell_height, :swell_direction, :period, numericality:true
  
  #validates :low_tide, :high_tide #not sure how we should validate
end
