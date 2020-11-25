class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @spots = Spot.all
    @spots = @spots.first(4) #must be replaced with Top 5 function
  end
end
