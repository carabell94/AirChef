class AddNameChefYearsHourlyLocationCuisineToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :chef, :boolean
    add_column :users, :years_experience, :integer
    add_column :users, :location, :string
    add_column :users, :hourly_rate, :integer
    add_column :users, :cuisine, :string
  end
end
