class AddFieldsToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :address, :string
    add_column :houses, :price, :integer
    add_column :houses, :country, :string
  end
end
