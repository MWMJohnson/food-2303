class FoodsController < ApplicationController

  def index
    query = params[:q]
    @foods = FoodFacade.new.foods_by_search(query)
    @results_count = FoodFacade.new.food_search_count(query)
  end

end