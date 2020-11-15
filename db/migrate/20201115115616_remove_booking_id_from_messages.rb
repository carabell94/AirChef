class RemoveBookingIdFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :booking_id
  end
end
