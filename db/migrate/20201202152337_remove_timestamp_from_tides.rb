class RemoveTimestampFromTides < ActiveRecord::Migration[6.0]
  def change
    remove_column :tides, :timestamp, :time
  end
end
