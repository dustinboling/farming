require "spec_helper"

describe BeansController do
  describe "routing" do

    it "routes to #index" do
      get("/beans").should route_to("beans#index")
    end

    it "routes to #new" do
      get("/beans/new").should route_to("beans#new")
    end

    it "routes to #show" do
      get("/beans/1").should route_to("beans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beans/1/edit").should route_to("beans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beans").should route_to("beans#create")
    end

    it "routes to #update" do
      put("/beans/1").should route_to("beans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beans/1").should route_to("beans#destroy", :id => "1")
    end

  end
end
