class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :name
      t.integer :years_experience
      t.float :hourly_rate
      t.string :location
      t.string :cuisines

      t.timestamps
    end
  end
end
