class Chef < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings


  validates :name, :bio, :location, :years_experience, :hourly_rate, :cuisines, presence: true
  validates :years_experience, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 70}
  validates :bio, length: { minimum: 10 }

  has_one_attached :photo

  def average_review
    if self.reviews.empty?
      ""
    else
      self.reviews.pluck(:rating).sum / self.reviews.length.to_f
    end
  end
end
