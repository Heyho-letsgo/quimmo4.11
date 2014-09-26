require 'rails_helper'

RSpec.describe "acquereurs/index", :type => :view do
  before(:each) do
    assign(:acquereurs, [
      Acquereur.create!(
        :nom => "MyText",
        :user => nil,
        :agence => nil
      ),
      Acquereur.create!(
        :nom => "MyText",
        :user => nil,
        :agence => nil
      )
    ])
  end

  it "renders a list of acquereurs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
