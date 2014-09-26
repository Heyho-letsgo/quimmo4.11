require 'rails_helper'

RSpec.describe "agences/edit", :type => :view do
  before(:each) do
    @agence = assign(:agence, Agence.create!(
      :nom => "MyString"
    ))
  end

  it "renders the edit agence form" do
    render

    assert_select "form[action=?][method=?]", agence_path(@agence), "post" do

      assert_select "input#agence_nom[name=?]", "agence[nom]"
    end
  end
end
