class RemoveReviewRatingFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :review_rating, :integer
  end
end
