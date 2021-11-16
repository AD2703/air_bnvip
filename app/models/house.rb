class House < ApplicationRecord
  has_many :bookings
  belongs_to :user
has_many_attached :photos
end
