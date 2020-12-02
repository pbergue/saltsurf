class RemoveTypeFromTides < ActiveRecord::Migration[6.0]
  def change
    remove_column :tides, :type, :string
  end
end
