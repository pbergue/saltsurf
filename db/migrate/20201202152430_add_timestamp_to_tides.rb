class AddTimestampToTides < ActiveRecord::Migration[6.0]
  def change
    add_column :tides, :timestamp, :datetime
  end
end
