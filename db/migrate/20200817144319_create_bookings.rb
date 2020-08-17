class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :date
      t.integer :guests
      t.string :location
      t.string :cuisine
      t.references :booked_user
      t.integer :review_rating
      t.string :review_content

      t.timestamps
    end
    add_foreign_key :bookings, :users, column: :booked_user_id, primary_key: :id
  end
end
