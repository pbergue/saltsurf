class Spot < ApplicationRecord
  has_many :favorites
  has_many :sessions
  has_many :forecasts
  has_many_attached :photos
end
