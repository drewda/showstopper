require 'spec_helper'

describe "quality_measures/index.html.erb" do
  before(:each) do
    assign(:quality_measures, [
      stub_model(QualityMeasure,
        :media_file_id => 1,
        :quality_dimension_id => 1,
        :value => 1
      ),
      stub_model(QualityMeasure,
        :media_file_id => 1,
        :quality_dimension_id => 1,
        :value => 1
      )
    ])
  end

  it "renders a list of quality_measures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
