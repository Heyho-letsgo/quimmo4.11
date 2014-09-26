require 'rails_helper'

RSpec.describe "proprietaires/show", :type => :view do
  before(:each) do
    @proprietaire = assign(:proprietaire, Proprietaire.create!(
      :agence => nil,
      :user => nil,
      :nom => "Nom"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Nom/)
  end
end
