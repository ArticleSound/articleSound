require "rails_helper"

RSpec.describe "user_articles", :type => :routing do 
  it "POST /user_articles routes to user_articles#create" do
    expect(:post =>"/user_articles").to route_to("user_articles#create")
  end

  it "PATCH /user_articles/:id routes to user_articles#update" do
    expect(:patch =>"/user_articles/1").to route_to(controller: "user_articles", action:"update", id:"1")
  end


  it "PUT /user_articles/:id routes to user_articles#update" do
    expect(:put =>"/user_articles/1").to route_to(controller: "user_articles", action:"update", id:"1")
  end

  it "DELETE /user_articles/:id routes to user_articles#destroy" do
    expect(:delete =>"/user_articles/1").to route_to(controller: "user_articles", action:"destroy", id:"1")
  end
end
