require 'spec_helper'

describe "media_files/new.html.erb" do
  before(:each) do
    assign(:media_file, stub_model(MediaFile,
      :name => "MyString",
      :kind => "MyString"
    ).as_new_record)
  end

  it "renders new media_file form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => media_files_path, :method => "post" do
      assert_select "input#media_file_name", :name => "media_file[name]"
      assert_select "input#media_file_kind", :name => "media_file[kind]"
    end
  end
end
