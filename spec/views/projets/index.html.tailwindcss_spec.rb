require 'rails_helper'

RSpec.describe 'projets/index', type: :view do
  before(:each) do
    assign(:projets, [
             Projet.create!(
               nom: 'Nom',
               url: 'Url'
             ),
             Projet.create!(
               nom: 'Nom',
               url: 'Url'
             )
           ])
  end

  it 'renders a list of projets' do
    render
    assert_select 'tr>td', text: 'Nom'.to_s, count: 2
    assert_select 'tr>td', text: 'Url'.to_s, count: 2
  end
end
