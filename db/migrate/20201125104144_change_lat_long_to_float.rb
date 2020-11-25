class ChangeLatLongToFloat < ActiveRecord::Migration[6.0]
  def change
    remove_column :spots, :longitude
    add_column :spots, :longitude, :float
    remove_column :spots, :latitude
    add_column :spots, :latitude, :float
  end
end
