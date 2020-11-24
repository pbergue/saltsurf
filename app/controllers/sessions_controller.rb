class SessionsController < ApplicationController
  def create
    @spot = Spot.find(params[:id])
    @session = Session.new(session_params)
    @user = current_user
    @spot.session = @session
  end

  private

  def session_params
    params.require(:session).permit(:title, :description, :rating, :timestamp)
  end
end
