class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef
  has_many :reviews

  validates :date, :guests, :location, :duration, :cuisine, presence: true
  validates :guests, numericality: { only_integer: true, greater_than_or_equal_to: 2, less_than_or_equal_to: 50 }
  validates :duration, numericality: { only_integer: true, greater_than_or_equal_to: 3, less_than_or_equal_to: 12 }
end
