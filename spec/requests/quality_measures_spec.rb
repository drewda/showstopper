require 'spec_helper'

describe "QualityMeasures" do
  describe "GET /quality_measures" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get quality_measures_path
      response.status.should be(200)
    end
  end
end
