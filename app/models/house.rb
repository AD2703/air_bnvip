class House < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  belongs_to :user
  has_many_attached :photos
  validates :country, inclusion: { in: ["Spain", "México", "Italy", "Belgium", "Brazil", "Catalunya"] }, presence: true
  validates :description, length: { minimum: 25 }, presence: true
  validates :price, numericality: { only_integer: true }, presence: true
  validates :name, presence: true
  validates :photos, presence: true
  validates :address, presence: true
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
      return 5
    end
  end

  def dates
    dates = []
    self.bookings.each do |booking|
      dates << { from: booking.start_date, to: booking.end_date }
    end
    return dates
  end

  def ben
    sum = 0
    if self.bookings.present?
      self.bookings.each do |booking|
        sum += booking.price.to_i
      end
    end
    return sum
  end

end
