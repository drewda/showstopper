require "spec_helper"

describe QualityMeasuresController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/quality_measures" }.should route_to(:controller => "quality_measures", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/quality_measures/new" }.should route_to(:controller => "quality_measures", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/quality_measures/1" }.should route_to(:controller => "quality_measures", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/quality_measures/1/edit" }.should route_to(:controller => "quality_measures", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/quality_measures" }.should route_to(:controller => "quality_measures", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/quality_measures/1" }.should route_to(:controller => "quality_measures", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/quality_measures/1" }.should route_to(:controller => "quality_measures", :action => "destroy", :id => "1")
    end

  end
end
