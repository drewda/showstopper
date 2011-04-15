require 'spec_helper'

describe "quality_dimensions/index.html.erb" do
  before(:each) do
    assign(:quality_dimensions, [
      stub_model(QualityDimension,
        :name => "Name",
        :min => 1,
        :max => 1
      ),
      stub_model(QualityDimension,
        :name => "Name",
        :min => 1,
        :max => 1
      )
    ])
  end

  it "renders a list of quality_dimensions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
