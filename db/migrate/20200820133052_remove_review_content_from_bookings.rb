class RemoveReviewContentFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :review_content, :text
  end
end
