require 'spec_helper'

describe "quality_measures/new.html.erb" do
  before(:each) do
    assign(:quality_measure, stub_model(QualityMeasure,
      :media_file_id => 1,
      :quality_dimension_id => 1,
      :value => 1
    ).as_new_record)
  end

  it "renders new quality_measure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quality_measures_path, :method => "post" do
      assert_select "input#quality_measure_media_file_id", :name => "quality_measure[media_file_id]"
      assert_select "input#quality_measure_quality_dimension_id", :name => "quality_measure[quality_dimension_id]"
      assert_select "input#quality_measure_value", :name => "quality_measure[value]"
    end
  end
end
