require "rails_helper"

RSpec.describe AgencesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/agences").to route_to("agences#index")
    end

    it "routes to #new" do
      expect(:get => "/agences/new").to route_to("agences#new")
    end

    it "routes to #show" do
      expect(:get => "/agences/1").to route_to("agences#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/agences/1/edit").to route_to("agences#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/agences").to route_to("agences#create")
    end

    it "routes to #update" do
      expect(:put => "/agences/1").to route_to("agences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/agences/1").to route_to("agences#destroy", :id => "1")
    end

  end
end
