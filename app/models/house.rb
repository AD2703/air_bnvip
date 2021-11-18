class House < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :user
  has_many_attached :photos
  validates :country, inclusion: { in: ["Spain", "México", "Italy", "Belgium", "Brazil", "Catalunya"] }
  validates :description, length: { minimum: 25 }
  validates :price, numericality: { only_integer: true }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
