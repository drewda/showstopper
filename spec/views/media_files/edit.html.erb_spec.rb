require 'spec_helper'

describe "media_files/edit.html.erb" do
  before(:each) do
    @media_file = assign(:media_file, stub_model(MediaFile,
      :name => "MyString",
      :kind => "MyString"
    ))
  end

  it "renders the edit media_file form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => media_files_path(@media_file), :method => "post" do
      assert_select "input#media_file_name", :name => "media_file[name]"
      assert_select "input#media_file_kind", :name => "media_file[kind]"
    end
  end
end
