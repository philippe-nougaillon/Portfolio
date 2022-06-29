require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/projets', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Projet. As you add validations to Projet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Projet.create! valid_attributes
      get projets_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      projet = Projet.create! valid_attributes
      get projet_url(projet)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_projet_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      projet = Projet.create! valid_attributes
      get edit_projet_url(projet)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Projet' do
        expect do
          post projets_url, params: { projet: valid_attributes }
        end.to change(Projet, :count).by(1)
      end

      it 'redirects to the created projet' do
        post projets_url, params: { projet: valid_attributes }
        expect(response).to redirect_to(projet_url(Projet.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Projet' do
        expect do
          post projets_url, params: { projet: invalid_attributes }
        end.to change(Projet, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post projets_url, params: { projet: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested projet' do
        projet = Projet.create! valid_attributes
        patch projet_url(projet), params: { projet: new_attributes }
        projet.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the projet' do
        projet = Projet.create! valid_attributes
        patch projet_url(projet), params: { projet: new_attributes }
        projet.reload
        expect(response).to redirect_to(projet_url(projet))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        projet = Projet.create! valid_attributes
        patch projet_url(projet), params: { projet: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested projet' do
      projet = Projet.create! valid_attributes
      expect do
        delete projet_url(projet)
      end.to change(Projet, :count).by(-1)
    end

    it 'redirects to the projets list' do
      projet = Projet.create! valid_attributes
      delete projet_url(projet)
      expect(response).to redirect_to(projets_url)
    end
  end
end
