class Booking < ApplicationRecord
  belongs_to :house
  belongs_to :user
  has_many :reviews
end
