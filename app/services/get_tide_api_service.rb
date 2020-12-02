require 'open-uri'

class GetTideApiService

  # def initialize
  #   @spot = Spot.first
  # end

  def call
    lat = Spot.first.latitude;
    lng =  Spot.first.longitude;
    end_time = Time.now.utc.beginning_of_day + 4.days ;
    # params = 'waveHeight,swellDirection,swellHeight,swellPeriod,waveDirection,waveHeight,wavePeriod,windDirection,windSpeed';
    response = HTTParty.get("https://api.stormglass.io/v2/tide/extremes/point?lat=#{lat}&lng=#{lng}&end=#{end_time}",
      headers: {
        'Authorization': "#{ENV['STORM_GLASS']}"
      }
    )
    rawresponse = JSON.parse(response.body)
    rawresponse['data'].each do |timestamp|
      p timestamp['time']
      p timestamp['height']
      p timestamp['type']
    end


  end
end
