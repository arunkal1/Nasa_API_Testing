require_relative 'services/nasa_api_service.rb'

class NasaApi

  def nasa_api_service
    NasaApiService.new
  end

end

# london = NasaApi.new.nasa_api_service
#
# puts london.nasa
