class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      @spots = current_user.spots if current_user.spots
    else
      @spots = Spot.all
      @spots = @spots.first(4) #must be replaced with Top 5 function
    end
  end
end
