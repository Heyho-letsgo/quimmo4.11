require 'rails_helper'

RSpec.describe "agences/show", :type => :view do
  before(:each) do
    @agence = assign(:agence, Agence.create!(
      :nom => "Nom"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
  end
end
