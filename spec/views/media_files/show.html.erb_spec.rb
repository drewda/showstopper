require 'spec_helper'

describe "media_files/show.html.erb" do
  before(:each) do
    @media_file = assign(:media_file, stub_model(MediaFile,
      :name => "Name",
      :kind => "Kind"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Kind/)
  end
end
