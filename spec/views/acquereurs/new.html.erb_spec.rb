require 'rails_helper'

RSpec.describe "acquereurs/new", :type => :view do
  before(:each) do
    assign(:acquereur, Acquereur.new(
      :nom => "MyText",
      :user => nil,
      :agence => nil
    ))
  end

  it "renders new acquereur form" do
    render

    assert_select "form[action=?][method=?]", acquereurs_path, "post" do

      assert_select "textarea#acquereur_nom[name=?]", "acquereur[nom]"

      assert_select "input#acquereur_user_id[name=?]", "acquereur[user_id]"

      assert_select "input#acquereur_agence_id[name=?]", "acquereur[agence_id]"
    end
  end
end
