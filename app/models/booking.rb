class Booking < ApplicationRecord
  belongs_to :house
  belongs_to :user

  def days
    (self.end_date-self.start_date).to_i + 1
  end
end
