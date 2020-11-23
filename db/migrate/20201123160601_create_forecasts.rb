class CreateForecasts < ActiveRecord::Migration[6.0]
  def change
    create_table :forecasts do |t|
      t.references :spot, null: false, foreign_key: true
      t.integer :wave_height
      t.integer :wind_direction
      t.integer :wind_speed
      t.integer :swell_height
      t.integer :rating
      t.integer :swell_direction
      t.integer :period
      t.datetime :timestamp
      t.string :source
      t.time :low_tide
      t.time :high_tide

      t.timestamps
    end
  end
end
