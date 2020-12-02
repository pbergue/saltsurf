class AddSealevelToForecasts < ActiveRecord::Migration[6.0]
  def change
    add_column :forecasts, :sea_level, :float
  end
end
