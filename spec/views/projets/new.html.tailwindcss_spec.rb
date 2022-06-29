require 'rails_helper'

RSpec.describe "projets/new", type: :view do
  before(:each) do
    assign(:projet, Projet.new(
      nom: "MyString",
      url: "MyString"
    ))
  end

  it "renders new projet form" do
    render

    assert_select "form[action=?][method=?]", projets_path, "post" do

      assert_select "input[name=?]", "projet[nom]"

      assert_select "input[name=?]", "projet[url]"
    end
  end
end
