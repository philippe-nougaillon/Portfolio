require 'rails_helper'

RSpec.describe "projets/show", type: :view do
  before(:each) do
    @projet = assign(:projet, Projet.create!(
      nom: "Nom",
      url: "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Url/)
  end
end
