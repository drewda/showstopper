require "spec_helper"

describe QualityDimensionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/quality_dimensions" }.should route_to(:controller => "quality_dimensions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/quality_dimensions/new" }.should route_to(:controller => "quality_dimensions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/quality_dimensions/1" }.should route_to(:controller => "quality_dimensions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/quality_dimensions/1/edit" }.should route_to(:controller => "quality_dimensions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/quality_dimensions" }.should route_to(:controller => "quality_dimensions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/quality_dimensions/1" }.should route_to(:controller => "quality_dimensions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/quality_dimensions/1" }.should route_to(:controller => "quality_dimensions", :action => "destroy", :id => "1")
    end

  end
end
