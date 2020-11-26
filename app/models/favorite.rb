class Favorite < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  has_many :photos, :through => :spot, :source => :photos_attachments

  validates :spot_id, :user_id, presence: true
end
