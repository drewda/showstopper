require 'spec_helper'

describe "quality_dimensions/edit.html.erb" do
  before(:each) do
    @quality_dimension = assign(:quality_dimension, stub_model(QualityDimension,
      :name => "MyString",
      :min => 1,
      :max => 1
    ))
  end

  it "renders the edit quality_dimension form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quality_dimensions_path(@quality_dimension), :method => "post" do
      assert_select "input#quality_dimension_name", :name => "quality_dimension[name]"
      assert_select "input#quality_dimension_min", :name => "quality_dimension[min]"
      assert_select "input#quality_dimension_max", :name => "quality_dimension[max]"
    end
  end
end
