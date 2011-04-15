require 'spec_helper'

describe "quality_measures/show.html.erb" do
  before(:each) do
    @quality_measure = assign(:quality_measure, stub_model(QualityMeasure,
      :media_file_id => 1,
      :quality_dimension_id => 1,
      :value => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
