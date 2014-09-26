require 'rails_helper'

RSpec.describe "proprietaires/index", :type => :view do
  before(:each) do
    assign(:proprietaires, [
      Proprietaire.create!(
        :agence => nil,
        :user => nil,
        :nom => "Nom"
      ),
      Proprietaire.create!(
        :agence => nil,
        :user => nil,
        :nom => "Nom"
      )
    ])
  end

  it "renders a list of proprietaires" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
  end
end
