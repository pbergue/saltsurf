class SessionsController < ApplicationController
  def create
    @spot = Spot.find(params[:id])
    @session = Session.new(session_params)
    @session.spot = @spot
    @session.user = current_user

    if @session.save
      redirect_to profile_path
    else
      render 'spots/show'
    end
  end

  private

  def session_params
    params.require(:session).permit(:title, :description, :rating, :timestamp)
  end
end
