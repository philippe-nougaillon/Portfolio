require "rails_helper"

RSpec.describe ProjetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/projets").to route_to("projets#index")
    end

    it "routes to #new" do
      expect(get: "/projets/new").to route_to("projets#new")
    end

    it "routes to #show" do
      expect(get: "/projets/1").to route_to("projets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/projets/1/edit").to route_to("projets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/projets").to route_to("projets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/projets/1").to route_to("projets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/projets/1").to route_to("projets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/projets/1").to route_to("projets#destroy", id: "1")
    end
  end
end
