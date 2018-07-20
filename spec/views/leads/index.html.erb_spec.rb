require 'rails_helper'

RSpec.describe "leads/index", type: :view do
  before(:each) do
    assign(:leads, [
      Lead.create!(
        :name => "Name",
        :email => "Email",
        :postal_code => "Postal Code"
      ),
      Lead.create!(
        :name => "Name",
        :email => "Email",
        :postal_code => "Postal Code"
      )
    ])
  end

  it "renders a list of leads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
  end
end
