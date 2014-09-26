require 'rails_helper'

RSpec.describe "Acquereurs", :type => :request do
  describe "GET /acquereurs" do
    it "works! (now write some real specs)" do
      get acquereurs_path
      expect(response).to have_http_status(200)
    end
  end
end
