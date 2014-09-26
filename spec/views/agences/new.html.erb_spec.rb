require 'rails_helper'

RSpec.describe "agences/new", :type => :view do
  before(:each) do
    assign(:agence, Agence.new(
      :nom => "MyString"
    ))
  end

  it "renders new agence form" do
    render

    assert_select "form[action=?][method=?]", agences_path, "post" do

      assert_select "input#agence_nom[name=?]", "agence[nom]"
    end
  end
end
