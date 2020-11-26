class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      @spots = current_user.favorites.map{|favorite| favorite.spot} if current_user.favorites
    else
      @spots = Spot.all
      @spots = @spots.first(4) #must be replaced with Top 5 function
    end
  end
end
