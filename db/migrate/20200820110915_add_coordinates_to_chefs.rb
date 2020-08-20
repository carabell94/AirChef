class AddCoordinatesToChefs < ActiveRecord::Migration[6.0]
  def change
    add_column :chefs, :latitude, :float
    add_column :chefs, :longitude, :float
  end
end
