class User < ApplicationRecord
  has_many :bookings
  has_many :jobs, class_name: 'Booking', foreign_key: :booked_user_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
