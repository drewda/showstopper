require 'spec_helper'

describe "quality_dimensions/show.html.erb" do
  before(:each) do
    @quality_dimension = assign(:quality_dimension, stub_model(QualityDimension,
      :name => "Name",
      :min => 1,
      :max => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
