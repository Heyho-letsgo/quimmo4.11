require 'rails_helper'

RSpec.describe "proprietaires/edit", :type => :view do
  before(:each) do
    @proprietaire = assign(:proprietaire, Proprietaire.create!(
      :agence => nil,
      :user => nil,
      :nom => "MyString"
    ))
  end

  it "renders the edit proprietaire form" do
    render

    assert_select "form[action=?][method=?]", proprietaire_path(@proprietaire), "post" do

      assert_select "input#proprietaire_agence_id[name=?]", "proprietaire[agence_id]"

      assert_select "input#proprietaire_user_id[name=?]", "proprietaire[user_id]"

      assert_select "input#proprietaire_nom[name=?]", "proprietaire[nom]"
    end
  end
end
