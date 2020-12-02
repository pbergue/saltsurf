class ProfilesController < ApplicationController

  before_action(:set_profile, only: [:show])
  # has_scope :by_favorites

  def show
    @favorites_spots = current_user.spots
    @session_spots = current_user.session_spots.uniq
    if params[:session_spot_name].present?
      @sessions = Session.where(spot_id: params[:session_spot_name]).order(created_at: :desc)
    else
      @sessions = current_user.sessions.order(created_at: :desc)
    end
  end



  private
  # def location_list
  #   locations = []
  #   Board.all.each do |board|
  #     brands << board.brand
  #   end
  #   brands.uniq
  # end
  def set_profile
    @profile = current_user
  end

  # def favorites_list
  #   favorites = []
  #   Favorites.all.each do |favorite|
  #     favorites << favorite.spot.name
  #   end
  #   favorites.uniq
  # end

  # The later can be replaced directly in the view with present? method
  # def owner_has_no_sessions?
  #   count = 0
  #     @profile.sessions.each do |session|
  #       board.rentals.each do |rental|
  #         count += 1 if rental
  #       end
  #     end
  #   return count == 0
  # end

  # def owner_has_no_favorites?
  #   count = 0
  #     @profile.sessions.each do |session|
  #       board.rentals.each do |rental|
  #         count += 1 if rental
  #       end
  #     end
  #   return count == 0
  # end

end
