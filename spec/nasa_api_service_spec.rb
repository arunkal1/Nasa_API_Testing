require_relative '../lib/nasa_api.rb'

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

  context "Getting all the information from NASA" do
    before(:all) do
      @nasa_class = NasaApi.new.nasa_api_service
      # @nasa_index = @nasa_class.initialize
    end

    # it "test" do
    #   @nasa_class.check_is_a_string2
    # end
  end
end
