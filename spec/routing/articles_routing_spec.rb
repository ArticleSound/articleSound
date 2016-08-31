require "rails_helper"

RSpec.describe "Routing to articles", :type => :routing do
  it "GET /articles/new routes to articles#new" do
    expect(:get => "/articles/new").to route_to("articles#new")
  end

  it "POST /articles routes to articles#create" do
    expect(:post => "/articles").to route_to("articles#create")
  end

  it "GET /articles/:id routes to articles#show" do
    expect(:get => "/articles/1").to route_to(controller:'articles', action: 'show', id: '1')
  end
end