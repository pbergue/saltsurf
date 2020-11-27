class SpotsController < ApplicationController
  before_action :set_spot, only: [:show]
  skip_before_action(:authenticate_user!, only: [ :index, :show ])

  def index
    # @spots = Spot.all
    # @spots = Spot.geocoded
    # console

    if params[:query].present?
      # @spots = @spots.near(params[:query], params[:distance].presence || 100)
      @spots = Spot.near(params[:query], params[:distance].presence || 100)
      @query_coordinates = Geocoder.search(params[:query]).first&.coordinates
    else
      @spots = Spot.geocoded
    end
    @spots = @spots.sort_by{ |spot| spot.forecast_today.rating }.reverse

    # @markers = @spots.geocoded.map do |spot| {
    @markers = @spots.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { spot: spot })
      }
    end
  end

  def show
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :description, :latitude, :longitude)
  end
end
