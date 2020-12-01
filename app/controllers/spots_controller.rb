class SpotsController < ApplicationController
  before_action :set_spot, only: [:show]
  skip_before_action(:authenticate_user!, only: [ :index, :show ])

  def index
    # @spots = Spot.all
    # @spots = Spot.geocoded
    # console

    if params[:query].present?
      @spots = Spot.near(params[:query], params[:distance].presence || 100)
      @query_coordinates = Geocoder.search(params[:query]).first&.coordinates
    else
      @spots = Spot.geocoded
    end
    @spots = @spots.sort_by{ |spot| spot.forecast_today.rating }.reverse
    # @forecasts = Forecast.all.select{ |forecast| forecast.timestamp == Time.now.utc.midnight+28800 && forecast.source == 'Météo-France'}

    @markers = @spots.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        name: spot.name,
        spotId: spot.id,
        infoWindow: render_to_string(partial: "info_window", locals: { spot: spot })
      }
    end
  end

  def show
    @forecasts_am = []
    @forecasts_pm = []
    Forecast.where(spot_id: @spot.id).each do |forecast|
      if forecast.timestamp == Time.now.utc.midnight+28800
      # if [Time.now.utc.midnight + 28800,Time.now.utc.midnight + 39600].include?(forecast.timestamp)
        @forecasts_am << forecast
      # elsif [Time.now.utc.midnight + 50400,Time.now.utc.midnight + 61200].include?(forecast.timestamp)
      elsif forecast.timestamp == Time.now.utc.midnight+50400
        @forecasts_pm << forecast
      end
    end
    @array = []
    @array << @spot
    @markers = @array.map do |spot| {
      lat: spot.latitude,
      lng: spot.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { spot: spot })
    }
    end

  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :description, :latitude, :longitude)
  end
end
