require "rails_helper"

RSpec.describe "Audios", :type => :routing do 
  it "GET /audios/new routes to audios#new" do
    expect(:get =>"/audios/new").to route_to("audios#new")
  end

  it "POST /audios routes to audios#create" do
    expect(:post =>"/audios").to route_to("audios#create")
  end
end