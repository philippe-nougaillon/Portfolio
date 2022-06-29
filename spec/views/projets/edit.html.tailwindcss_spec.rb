require 'rails_helper'

RSpec.describe "projets/edit", type: :view do
  before(:each) do
    @projet = assign(:projet, Projet.create!(
      nom: "MyString",
      url: "MyString"
    ))
  end

  it "renders the edit projet form" do
    render

    assert_select "form[action=?][method=?]", projet_path(@projet), "post" do

      assert_select "input[name=?]", "projet[nom]"

      assert_select "input[name=?]", "projet[url]"
    end
  end
end
