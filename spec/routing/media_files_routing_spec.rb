require "spec_helper"

describe MediaFilesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/media_files" }.should route_to(:controller => "media_files", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/media_files/new" }.should route_to(:controller => "media_files", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/media_files/1" }.should route_to(:controller => "media_files", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/media_files/1/edit" }.should route_to(:controller => "media_files", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/media_files" }.should route_to(:controller => "media_files", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/media_files/1" }.should route_to(:controller => "media_files", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/media_files/1" }.should route_to(:controller => "media_files", :action => "destroy", :id => "1")
    end

  end
end
