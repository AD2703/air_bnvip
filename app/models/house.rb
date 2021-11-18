class House < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  belongs_to :user
  has_many_attached :photos
  validates :country, inclusion: { in: ["Spain", "México", "Italy", "Belgium", "Brazil", "Catalunya"] }
  validates :description, length: { minimum: 25 }
  validates :price, numericality: { only_integer: true }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def avg_review
    if self.reviews.present?
      sum = 0
      self.reviews.each do |review|
        sum += review[:rating].to_i
      end
      return (sum / self.reviews.count)
    else
      return 0
    end
  end

  def dates
    dates = []
    self.bookings.each do |booking|
      dates << { from: booking.start_date, to: booking.end_date }
    end
    return dates
  end
end
