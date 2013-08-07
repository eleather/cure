require "spec_helper"

describe UserSupplementsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_supplements").should route_to("user_supplements#index")
    end

    it "routes to #new" do
      get("/user_supplements/new").should route_to("user_supplements#new")
    end

    it "routes to #show" do
      get("/user_supplements/1").should route_to("user_supplements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_supplements/1/edit").should route_to("user_supplements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_supplements").should route_to("user_supplements#create")
    end

    it "routes to #update" do
      put("/user_supplements/1").should route_to("user_supplements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_supplements/1").should route_to("user_supplements#destroy", :id => "1")
    end

  end
end
