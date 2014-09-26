require 'rails_helper'

RSpec.describe "acquereurs/show", :type => :view do
  before(:each) do
    @acquereur = assign(:acquereur, Acquereur.create!(
      :nom => "MyText",
      :user => nil,
      :agence => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
