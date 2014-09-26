require 'rails_helper'

RSpec.describe "agences/index", :type => :view do
  before(:each) do
    assign(:agences, [
      Agence.create!(
        :nom => "Nom"
      ),
      Agence.create!(
        :nom => "Nom"
      )
    ])
  end

  it "renders a list of agences" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
  end
end
