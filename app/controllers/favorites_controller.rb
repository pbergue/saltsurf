class FavoritesController < ApplicationController
  skip_before_action(:authenticate_user!, only: [ :create ])
  before_action :set_spot, only: [:create, :destroy]

  def create
    if user_signed_in?
        @spot = Spot.find(params[:spot_id])
        @favorite = Favorite.new()
        @favorite.spot = @spot
        @favorite.user = current_user
        @favorite.save
        redirect_to spot_path(@spot)
    else 
      # redirect_to new_user_session_path
      redirect_to spot_path(@spot), alert: "You must be logged in for this feature"
    end
  end

  def destroy
    if user_signed_in?
        @spot = Spot.find(params[:spot_id])
        @user = current_user
        @favorites = @user.favorites
        @favorite = @favorites.find_by spot_id: @spot.id
        @favorite.destroy
        redirect_to spot_path(@spot)
    else 
      redirect_to spot_path(@spot), alert: "You must be logged in for this feature"
    end
  end

  private

  def favorite_params
    params.require(:spot).permit(:spot_id)
  end

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

end
