class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  #houses you have booked
  has_many :houses, through: :bookings
  #houses you own
  has_many :user_houses, foreign_key: "user_id", class_name: "House"
  validates :email, format: { with: /\A.*@.*\.com\z/ }

  def total_benefit
    sum = 0
    self.user_houses.each do |house|
      if house.ben.present?
        sum += house.ben
      end
    end
    return sum
  end

  def avg_review_total
    if self.houses.present?
      sum = 0
      self.houses.each do |house|
        sum += house.avg_review.to_i
      end
      return (sum / self.houses.count)
    else
      return 5
    end
  end
end
