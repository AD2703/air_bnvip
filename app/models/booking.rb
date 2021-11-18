class Booking < ApplicationRecord
  belongs_to :house
  belongs_to :user
  has_many :reviews, dependent: :destroy

  def days
    (self.end_date-self.start_date).to_i + 1
  end

end
