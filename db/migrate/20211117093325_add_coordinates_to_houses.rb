class AddCoordinatesToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :latitude, :float
    add_column :houses, :longitude, :float
  end
end
