require 'spec_helper'

describe "media_files/index.html.erb" do
  before(:each) do
    assign(:media_files, [
      stub_model(MediaFile,
        :name => "Name",
        :kind => "Kind"
      ),
      stub_model(MediaFile,
        :name => "Name",
        :kind => "Kind"
      )
    ])
  end

  it "renders a list of media_files" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
  end
end
