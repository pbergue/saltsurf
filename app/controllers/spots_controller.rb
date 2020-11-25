class SpotsController < ApplicationController
  before_action :set_spot, only: [:show]
  skip_before_action(:authenticate_user!, only: [ :index, :show ])

  def index
    @spots = Spot.all

    if params[:query].present?
      @spots = @spots.near(params[:query], params[:distance].to_i)
      @query_coordinates = Geocoder.search(params[:query]).first&.coordinates
      console
    end

    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude
      }
    end
  end

  def show
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end
end
