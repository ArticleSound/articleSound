require "rails_helper"

RSpec.describe "Routing to the application", :type => :routing do
  it "GET / routes to application#index" do
    expect(:get => "/").to route_to("application#index")
  end
end
