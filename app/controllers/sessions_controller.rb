class SessionsController < ApplicationController
  def create
    @spot = Spot.find(params[:spot_id])
    @session = Session.new()
    @session.spot = @spot
    @session.user = current_user
    @session.timestamp = DateTime.now
    if @session.save
      redirect_to profile_path
    else
      render 'spots/show'
    end
  end

  def update
    @session = Session.find params[:id]
    if params[:session][:description].present?
     @session.description = params[:session][:description]
     @session.save
    elsif params[:session][:rating].present?
      @session.rating = params[:session][:rating]
      @session.save
    end


    redirect_to profile_path
  end
  private

  def session_params
    params.require(:session).permit(:title, :description, :rating, :timestamp, :spot)
  end
end
