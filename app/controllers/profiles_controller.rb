class ProfilesController < ApplicationController

  before_action(:set_profile, only: [:show])

  def show
    @favorite_spots = current_user.spots
    raise
  end

  private

  def set_profile
    @profile = current_user
  end

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
