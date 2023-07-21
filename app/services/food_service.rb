class FoodService
  def get_food_by_search(food)
    get_url("/fdc/v1/foods/search?query=#{food}")
  end
  
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def conn
    Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.headers["X-Api-Key"] = ENV["USDA_API_KEY"]
    end
  end
end