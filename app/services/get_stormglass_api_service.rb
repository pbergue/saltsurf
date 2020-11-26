require 'open-uri'
require 'json'
require 'httparty'

class GetStormglassApiService
  include HTTParty

  def initialize
    # @spot = spot
  end

  def call
    lat = 47.8408;
    lng = 47.8408;
    # source = 'sg';
    # end = Time.now.getutc + 86400;
    params = 'waveHeight,currentDirection,swellDirection,swellHeight,swellPeriod,waveDirection,waveHeight,wavePeriod,windDirection,windSpeed';
    response = HTTParty.get("https://api.stormglass.io/v2/weather/point?lat=#{lat}&lng=#{lng}&params=#{params}",
      headers: {
        'Authorization': 'fabe6ec0-2efb-11eb-a5cd-0242ac130002-fabe6f4c-2efb-11eb-a5cd-0242ac130002'
      }
    )
    rawresponse = JSON.parse(response.body)
    # p rawresponse['meta']['requestCount'] # uncomment to display request count (max 50 /day)
    # p rawresponse['meta']['params'] #uncomment to display params
    hours = rawresponse['hours']
    p hours
    # hours.each do |hour|
    #  p hour["time"]
    #  p hour["wavePeriod"]["sg"]
      # Forecast.create(
        # timestamp: hour["time"],
        # wave_height: hour["wavePeriod"]["sg"] ,
        # wind_direction: hour["windDirection"]["sg"],
        # wind_speed: hour["windSpeed"]["sg"],
        # swell_height: hour["swellHeight"]["sg"],
        # rating: rand(0..5),
        # swell_direction: hour["swellDirection"]["sg"],
        # period: hour["wavePeriod"]["sg"],
        # source: "sg",
        # low_tide: DateTime.now + 6.25.hours,
        # high_tide: DateTime.now,
        # spot_id: 260
      # )
    # end
  end
end
