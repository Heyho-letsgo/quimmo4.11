require "rails_helper"

RSpec.describe ProprietairesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/proprietaires").to route_to("proprietaires#index")
    end

    it "routes to #new" do
      expect(:get => "/proprietaires/new").to route_to("proprietaires#new")
    end

    it "routes to #show" do
      expect(:get => "/proprietaires/1").to route_to("proprietaires#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/proprietaires/1/edit").to route_to("proprietaires#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/proprietaires").to route_to("proprietaires#create")
    end

    it "routes to #update" do
      expect(:put => "/proprietaires/1").to route_to("proprietaires#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/proprietaires/1").to route_to("proprietaires#destroy", :id => "1")
    end

  end
end
