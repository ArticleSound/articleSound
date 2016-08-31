require "rails_helper"

RSpec.describe "User", :type => :routing do 
  it "GET /register routes to users#new" do
    expect(:get =>"/register").to route_to("users#new")
  end

  it "POST /users routes to users#create" do
    expect(:post =>"/users").to route_to("users#create")
  end

  it "GET /users/:id/edit to users#edit" do
    expect(:get => "/users/1/edit").to route_to(controller:'users', action: "edit", id:"1")
  end

  it "GET /users/:id to users#show" do
    expect(:get => "/users/1").to route_to(controller:'users', action: "show", id:"1")
  end

  it "PATCH /users/:id to users#update" do
    expect(:patch => "/users/1").to route_to(controller:"users", action:"update", id:"1")
  end

  it "PUT /users/:id to users#update" do
    expect(:put => "/users/1").to route_to(controller:"users", action:"update", id:"1")
  end

  it "DELETE /users/:id to users#destroy" do
    expect(:delete => "/users/1").to route_to(controller:"users", action:"destroy", id:"1")
  end
end

