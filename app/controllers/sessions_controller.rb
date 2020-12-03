class SessionsController < ApplicationController
  def create
    @spot = Spot.find(params[:spot_id])
    @session = Session.new()
    @session.description = "add your notes"
    @session.rating = 0;
    @session.spot = @spot
    @session.user = current_user
    @session.timestamp = DateTime.now
    raise 
    if @session.save
      @session.save
      redirect_to profile_path
    else
      redirect_to spot_path(@spot), alert: "You must be logged in for this feature"
    end
  end

  def update
    @session = Session.find params[:id]
    if @session.update(session_params)
      @session.save
    end
    redirect_to profile_path
  end

  def update_rating
    @session = Session.find params[:id]
    @session.rating = params[:rating]
    @session.save
    render json: { response: "c'est gagné" }
  end

  private

  def session_params
    params.require(:session).permit(:description, :rating, :timestamp, :spot)
  end
end
