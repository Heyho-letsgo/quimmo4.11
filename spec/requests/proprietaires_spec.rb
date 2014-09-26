require 'rails_helper'

RSpec.describe "Proprietaires", :type => :request do
  describe "GET /proprietaires" do
    it "works! (now write some real specs)" do
      get proprietaires_path
      expect(response).to have_http_status(200)
    end
  end
end
