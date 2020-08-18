class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :date
      t.integer :guests
      t.string :location
      t.string :cuisine
      t.references :chef, null: false, foreign_key: true
      t.integer :review_rating
      t.text :review_content

      t.timestamps
    end
  end
end
