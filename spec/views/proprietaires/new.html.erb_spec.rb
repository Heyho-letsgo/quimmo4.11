require 'rails_helper'

RSpec.describe "proprietaires/new", :type => :view do
  before(:each) do
    assign(:proprietaire, Proprietaire.new(
      :agence => nil,
      :user => nil,
      :nom => "MyString"
    ))
  end

  it "renders new proprietaire form" do
    render

    assert_select "form[action=?][method=?]", proprietaires_path, "post" do

      assert_select "input#proprietaire_agence_id[name=?]", "proprietaire[agence_id]"

      assert_select "input#proprietaire_user_id[name=?]", "proprietaire[user_id]"

      assert_select "input#proprietaire_nom[name=?]", "proprietaire[nom]"
    end
  end
end
