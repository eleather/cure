require "spec_helper"

describe SupplementPlansController do
  describe "routing" do

    it "routes to #index" do
      get("/supplement_plans").should route_to("supplement_plans#index")
    end

    it "routes to #new" do
      get("/supplement_plans/new").should route_to("supplement_plans#new")
    end

    it "routes to #show" do
      get("/supplement_plans/1").should route_to("supplement_plans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/supplement_plans/1/edit").should route_to("supplement_plans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/supplement_plans").should route_to("supplement_plans#create")
    end

    it "routes to #update" do
      put("/supplement_plans/1").should route_to("supplement_plans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/supplement_plans/1").should route_to("supplement_plans#destroy", :id => "1")
    end

  end
end
