require 'json'
require "httparty"

class NasaApiService
  include HTTParty
  base_uri 'https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-07&end_date=2015-09-08&'

  attr_accessor :nasa

  def initialize
    @api_key = 'PexEAtSdu3r7w4t0ifvxM02xjMcCuZEl7lwCDQVB'
    @nasa = JSON.parse(self.class.get("&api_key=#{@api_key}").body)
  end

  # Generic Function to check if anything is a string
  # Key1 is the outter layer of the Hash and Key2 is the inner layer of the hash
  def check_is_a_string key1, key2
    @nasa[key1].each do |link|
      link.each do |ind|
        if ind[key2].is_a? (String)
          return true
        end
      end
    end
  end

  # def check_is_a_string2
  #   @nasa["near_earth_objects"].each do |link|
  #     link.each do |ind|
  #       ind["2015-09-08"] do |another|
  #         p another
  #       end
  #     end
  #   end
  # end

end
