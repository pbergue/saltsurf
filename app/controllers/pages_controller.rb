class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in? && current_user.favorites.present?
      @spots = current_user.spots if current_user.spots
    else
      @spots = Spot.all
      @spots = @spots.sort_by{ |spot| spot.forecast_today.rating }
      .reverse
      .take(4)

    end
  end
end
