class FoodFacade
  def foods_by_search(food)
    service = FoodService.new
    foods = service.get_food_by_search(food)
    foods[:foods].map do |food_search_result_data|
      Food.new(food_search_result_data)
    end
  end

  def food_search_count(food)
    service = FoodService.new
    foods = service.get_food_by_search(food)
    total_hits = foods[:totalHits].to_s
    total_hits
  end

end