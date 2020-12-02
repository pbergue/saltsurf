class AddStatusToTides < ActiveRecord::Migration[6.0]
  def change
    add_column :tides, :status, :string
  end
end
