class ChangeWaveheightandSwellheightToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :forecasts, :wave_height, :float
    change_column :forecasts, :swell_height, :float
  end
end
