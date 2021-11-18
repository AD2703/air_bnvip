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
end
