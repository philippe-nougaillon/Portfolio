require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        name: "Name",
        description: "MyText"
      ),
      Client.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
