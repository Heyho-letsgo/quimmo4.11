require 'rails_helper'

RSpec.describe "Agences", :type => :request do
  describe "GET /agences" do
    it "works! (now write some real specs)" do
      get agences_path
      expect(response).to have_http_status(200)
    end
  end
end
