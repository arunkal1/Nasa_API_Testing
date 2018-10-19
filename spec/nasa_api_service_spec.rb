require_relative '../lib/nasa_api.rb'

# ======================= CHECK NASA AND LINKS =======================
describe "Nasa" do
  context "Getting all the information from NASA" do
    before(:all) do
      @nasa_class = NasaApi.new.nasa_api_service
      # @nasa_index = @nasa_class.initialize
    end

    # Checks that information from NASA Api is a Hash
    it "Should be a Hash" do
      expect(@nasa_class.nasa).to be_a (Hash)
    end

    # Checks that the length of the Hash is 3
    it "Should return the length of the Hash" do
      expect(@nasa_class.nasa.length).to eq 3
    end

    # Checks the next link as a string
    it "Should return the next link as String" do
      # @nasa_class.check_is_a_string
      expect(@nasa_class.check_is_a_string "links","next").to be true
    end

    # Checks the prev link as a string
    it "Should return the prev link as String" do
      expect(@nasa_class.check_is_a_string "links","prev").to be true
    end

    # Checks the self link as a string
    it "Should return the self link as String" do
      expect(@nasa_class.check_is_a_string "links","self").to be true
    end

    # Checks that element_count is an Integer
    it "Should return element_count as an Integer" do
      expect(@nasa_class.nasa["element_count"]).to be_a (Integer)
    end
  end

  # ==================== CHECK NEAR_EARTH_OBJECTS ====================
  context "Getting all the information from Near_Earth_Objects" do
    before(:all) do
      @nasa_class = NasaApi.new.nasa_api_service
      # @nasa_index = @nasa_class.initialize
    end

    # Checks that near_earth_objects is a Hash
    it "Should return near_earth_objects as an Hash" do
      expect(@nasa_class.nasa["near_earth_objects"]).to be_a (Hash)
    end

    # Checks that near_earth_objects/2015-09-08 is an Array
    it "Should return near_earth_objects and 2015-09-08 as an Array" do
      expect(@nasa_class.nasa["near_earth_objects"]["2015-09-08"]).to be_a (Array)
    end

    # Checks that [near_earth_objects][2015-09-08][links][self] is a String
    it "Should return [near_earth_objects][2015-09-08][links][self] as a String" do
      expect(@nasa_class.check_is_a_string_2015 "links","self").to be true
    end

    # Checks that [near_earth_objects][2015-09-08][links][id] is a String
    it "Should return [near_earth_objects][2015-09-08][id] as a String" do
      expect(@nasa_class.check_is_a_string_2015_all "id").to be true
    end

    # Checks that [near_earth_objects][2015-09-08][links][neo_reference_id] is a String
    it "Should return [near_earth_objects][2015-09-08][neo_reference_id] as a String" do
      expect(@nasa_class.check_is_a_string_2015_all "neo_reference_id").to be true
    end

    # Checks that [near_earth_objects][2015-09-08][links][name] is a String
    it "Should return [near_earth_objects][2015-09-08][name] as a String" do
      expect(@nasa_class.check_is_a_string_2015_all "name").to be true
    end

    # Checks that [near_earth_objects][2015-09-08][links][nasa_jpl_url] is a String
    it "Should return [near_earth_objects][2015-09-08][nasa_jpl_url] as a String" do
      expect(@nasa_class.check_is_a_string_2015_all "nasa_jpl_url").to be true
    end

    # Checks that [near_earth_objects][2015-09-08][links][absolute_magnitude_h] is a Float
    it "Should return [near_earth_objects][2015-09-08][absolute_magnitude_h] as a Float" do
      expect(@nasa_class.check_is_a_float_2015_all "absolute_magnitude_h", Float).to be true
    end

  end

# ============= CHECK NEAR_EARTH_OBJECTS ESTIMATED_DIAMETER =========
  context "Getting all the information from Near_Earth_Objects [estimated_diameter]" do
    before(:all) do
      @nasa_class = NasaApi.new.nasa_api_service
      # @nasa_index = @nasa_class.initialize
    end

    # Checks that [near_earth_objects][2015-09-08][estimated_diameter][kilometers][estimated_diameter_min] is a Float
    it "Should return [near_earth_objects][2015-09-08][estimated_diameter][kilometers][estimated_diameter_min] as a Float" do
      # @nasa_class.check_is_a_float_2015_est_diam
      expect(@nasa_class.check_is_a_float_2015_est_diam "kilometers","estimated_diameter_min",Float).to be true
    end

    # Checks that [near_earth_objects][2015-09-08][estimated_diameter][kilometers][estimated_diameter_max] is a Float
    it "Should return [near_earth_objects][2015-09-08][estimated_diameter][kilometers][estimated_diameter_max] as a Float" do
      expect(@nasa_class.check_is_a_float_2015_est_diam "kilometers","estimated_diameter_max",Float).to be true
    end

    # Checks that [near_earth_objects][2015-09-08][estimated_diameter][meters][estimated_diameter_min] is a Float
    it "Should return [near_earth_objects][2015-09-08][estimated_diameter][meters][estimated_diameter_min] as a Float" do
      expect(@nasa_class.check_is_a_float_2015_est_diam "meters","estimated_diameter_min",Float).to be true
    end

    # Checks that [near_earth_objects][2015-09-08][estimated_diameter][meters][estimated_diameter_max] is a Float
    it "Should return [near_earth_objects][2015-09-08][estimated_diameter][meters][estimated_diameter_max] as a Float" do
      expect(@nasa_class.check_is_a_float_2015_est_diam "meters","estimated_diameter_max",Float).to be true
    end

    # Checks that [near_earth_objects][2015-09-08][estimated_diameter][miles][estimated_diameter_min] is a Float
    it "Should return [near_earth_objects][2015-09-08][estimated_diameter][miles][estimated_diameter_min] as a Float" do
      expect(@nasa_class.check_is_a_float_2015_est_diam "miles","estimated_diameter_min",Float).to be true
    end

    # Checks that [near_earth_objects][2015-09-08][estimated_diameter][miles][estimated_diameter_max] is a Float
    it "Should return [near_earth_objects][2015-09-08][estimated_diameter][miles][estimated_diameter_max] as a Float" do
      expect(@nasa_class.check_is_a_float_2015_est_diam "miles","estimated_diameter_max",Float).to be true
    end

    # Checks that [near_earth_objects][2015-09-08][estimated_diameter][feet][estimated_diameter_min] is a Float
    it "Should return [near_earth_objects][2015-09-08][estimated_diameter][feet][estimated_diameter_min] as a Float" do
      expect(@nasa_class.check_is_a_float_2015_est_diam "feet","estimated_diameter_min",Float).to be true
    end

    # Checks that [near_earth_objects][2015-09-08][estimated_diameter][feet][estimated_diameter_max] is a Float
    it "Should return [near_earth_objects][2015-09-08][estimated_diameter][feet][estimated_diameter_max] as a Float" do
      expect(@nasa_class.check_is_a_float_2015_est_diam "feet","estimated_diameter_max",Float).to be true
    end

    # Checks that [near_earth_objects][2015-09-08][is_potentially_hazardous_asteroid] is a Float
    it "Should return [near_earth_objects][2015-09-08][is_potentially_hazardous_asteroid] to be false" do
      expect(@nasa_class.check_is_a_bool_2015_all "is_potentially_hazardous_asteroid").to be false
    end

  end

  # ============= CHECK NEAR_EARTH_OBJECTS CLOSE_APPROACH_DATA =========
    context "Getting all the information from Near_Earth_Objects [close_approach_data]" do
      before(:all) do
        @nasa_class = NasaApi.new.nasa_api_service
        # @nasa_index = @nasa_class.initialize
      end

      it "Should return [near_earth_objects][2015-09-08][close_approach_data][close_approach_date] as a String" do
        expect(@nasa_class.check_2015_app_data "close_approach_date", String).to be true
      end

      it "Should return [near_earth_objects][2015-09-08][close_approach_data][epoch_date_close_approach] as an Integer" do
        expect(@nasa_class.check_2015_app_data "epoch_date_close_approach", Integer).to be true
      end

      # ===================== RELATIVE VELOCITY =====================

      it "Should return [near_earth_objects][2015-09-08][close_approach_data][relative_velocity][kilometers_per_second] as a String" do
        expect(@nasa_class.check_2015_app_data_inner "relative_velocity", "kilometers_per_second", String).to be true
      end

      it "Should return [near_earth_objects][2015-09-08][close_approach_data][relative_velocity][kilometers_per_hour] as a String" do
        expect(@nasa_class.check_2015_app_data_inner "relative_velocity", "kilometers_per_hour", String).to be true
      end

      it "Should return [near_earth_objects][2015-09-08][close_approach_data][relative_velocity][miles_per_hour] as a String" do
        expect(@nasa_class.check_2015_app_data_inner "relative_velocity", "miles_per_hour", String).to be true
      end

      # ===================== MISS DISTANCE =====================
      it "Should return [near_earth_objects][2015-09-08][close_approach_data][miss_distance][astronomical] as a String" do
        expect(@nasa_class.check_2015_app_data_inner "miss_distance", "astronomical", String).to be true
      end

      it "Should return [near_earth_objects][2015-09-08][close_approach_data][miss_distance][lunar] as a String" do
        expect(@nasa_class.check_2015_app_data_inner "miss_distance", "lunar", String).to be true
      end

      it "Should return [near_earth_objects][2015-09-08][close_approach_data][miss_distance][kilometers] as a String" do
        expect(@nasa_class.check_2015_app_data_inner "miss_distance", "kilometers", String).to be true
      end

      it "Should return [near_earth_objects][2015-09-08][close_approach_data][miss_distance][miles] as a String" do
        expect(@nasa_class.check_2015_app_data_inner "miss_distance", "miles", String).to be true
      end

      it "Should return [near_earth_objects][2015-09-08][close_approach_data][orbiting_body] as an String" do
        expect(@nasa_class.check_2015_app_data "orbiting_body", String).to be true
      end

      # Checks that [near_earth_objects][2015-09-08][is_potentially_hazardous_asteroid] is a Float
      it "Should return [near_earth_objects][2015-09-08][is_sentry_object] to be false" do
        expect(@nasa_class.check_is_a_bool_2015_all "is_sentry_object").to be false
      end

    end
end
