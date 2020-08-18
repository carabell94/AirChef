class AddBioToChef < ActiveRecord::Migration[6.0]
  def change
    add_column :chefs, :bio, :text
  end
end
