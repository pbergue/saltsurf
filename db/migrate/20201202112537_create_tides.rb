class CreateTides < ActiveRecord::Migration[6.0]
  def change
    create_table :tides do |t|
      t.time :timestamp
      t.string :type
      t.float :height
      t.references :spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
