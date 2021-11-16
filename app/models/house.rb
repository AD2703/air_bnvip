class House < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_many_attached :photos
  validates :country, inclusion: { in: ["Spain", "México", "Italy", "Belgium", "Brazil", "Catalunya"] }
  validates :description, length: { minimum: 25 }
  validates :price, numericality: { only_integer: true }
end
