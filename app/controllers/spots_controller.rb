class SpotsController < ApplicationController
  before_action :set_spot, only: [:show]
  skip_before_action(:authenticate_user!, only: [ :index, :show ])

  def index
    @spots = Spot.all

    if params[:query].present?
      @spots = @spots.near(params[:query], params[:distance].presence || 100)
      @query_coordinates = Geocoder.search(params[:query]).first&.coordinates
    end

    @markers = @spots.geocoded.map do |spot| {
        lat: spot.latitude,
        lng: spot.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { spot: spot })
      }
    end
  end

  def show
    @forecasts_am = []
    @forecasts_pm = []
    Forecast.where(spot_id: @spot.id).each do |forecast|
      if forecast.timestamp.hour < 12
        @forecasts_am << forecast
      elsif forecast.timestamp.hour > 12
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
