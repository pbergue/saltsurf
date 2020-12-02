class AddWeatherConditionsToForecasts < ActiveRecord::Migration[6.0]
  def change
    add_column :forecasts, :water_temperature, :integer
    add_column :forecasts, :air_temperature, :integer
  end
end
