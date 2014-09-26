require "rails_helper"

RSpec.describe AcquereursController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/acquereurs").to route_to("acquereurs#index")
    end

    it "routes to #new" do
      expect(:get => "/acquereurs/new").to route_to("acquereurs#new")
    end

    it "routes to #show" do
      expect(:get => "/acquereurs/1").to route_to("acquereurs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/acquereurs/1/edit").to route_to("acquereurs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/acquereurs").to route_to("acquereurs#create")
    end

    it "routes to #update" do
      expect(:put => "/acquereurs/1").to route_to("acquereurs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/acquereurs/1").to route_to("acquereurs#destroy", :id => "1")
    end

  end
end
