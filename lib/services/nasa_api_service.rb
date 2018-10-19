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

  # ========================== CHECK NASA-LINKS ==========================
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

  # ======================= CHECK NEAR_EARTH_OBJECTS =======================
  # Generic Function to check if anything is a string
  # This will go inside 2015-09-08 loop and get key1 and key2
  def check_is_a_string_2015 key1, key2
    @nasa["near_earth_objects"]["2015-09-08"].each do |link|
      if link[key1][key2].is_a?(String)
        return true
      end
    end
  end

  # Generic Function to check if anything is a string
  # This will go inside 2015-09-08 loop and get key1 and key2
  def check_is_a_string_2015_all key1
    @nasa["near_earth_objects"]["2015-09-08"].each do |link|
      if link[key1].is_a?(String)
        return true
      end
    end
  end

  def check_is_a_float_2015_all key1, value
    @nasa["near_earth_objects"]["2015-09-08"].each do |link|
      if link[key1].is_a?(value)
        return true
      end
    end
  end

  # ================= CHECK NEAR_EARTH_OBJECTS BOOLEAN ================
  # Checks if is_potentially_hazardous_asteroid is false but comparing it to itself.
  def check_is_a_bool_2015_all key1
    @nasa["near_earth_objects"]["2015-09-08"].each do |link|
      unless !link[key1] == link[key1]
        return false
      end
    end
    return true
  end

  # ============= CHECK NEAR_EARTH_OBJECTS ESTIMATED_DIAMETER =========
  def check_is_a_float_2015_est_diam key1, key2, value
    @nasa["near_earth_objects"]["2015-09-08"].each do |link|
      if link["estimated_diameter"][key1][key2].is_a?(value)
        return true
      end
    end
  end


  # ============ CHECK NEAR_EARTH_OBJECTS CLOSE_APPROACH_DATA ============

  def check_2015_app_data key1, value
    @nasa["near_earth_objects"]["2015-09-08"].each do |link|
      link["close_approach_data"].each do |item|
        if item[key1].is_a?(value)
          return true
        end
      end
    end
  end
end
