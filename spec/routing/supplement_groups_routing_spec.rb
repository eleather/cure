require "spec_helper"

describe SupplementGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/supplement_groups").should route_to("supplement_groups#index")
    end

    it "routes to #new" do
      get("/supplement_groups/new").should route_to("supplement_groups#new")
    end

    it "routes to #show" do
      get("/supplement_groups/1").should route_to("supplement_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/supplement_groups/1/edit").should route_to("supplement_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/supplement_groups").should route_to("supplement_groups#create")
    end

    it "routes to #update" do
      put("/supplement_groups/1").should route_to("supplement_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/supplement_groups/1").should route_to("supplement_groups#destroy", :id => "1")
    end

  end
end
