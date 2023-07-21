class FoodsController < ApplicationController

def index
  query = params[:q]
  @foods = FoodFacade.new.foods_by_search(query)
end
#   def index
#     state = params[:state]

#     conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
#       faraday.headers["X-API-Key"] = ENV["NREL_API_KEY"]
#     end

#     response = conn.get("/congress/v1/members/house/#{state}/current.json")

#     json = JSON.parse(response.body, symbolize_names: true)
#     @members = json[:results]
#   end
end