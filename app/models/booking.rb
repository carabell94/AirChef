class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :booked_user, class_name: 'User'
  has_many :messages
end
