require "rails_helper"

RSpec.describe FoodFacade do
  describe "#foods_by_search(food)" do
    it "can search for foods by keyword" do
      params = "sweet potatoes"
      food_results = FoodFacade.new.foods_by_search(params)

      expect(food_results).to be_an(Array)

      food_results.each do |food_result|
        expect(food_result).to be_a(Food)
      end
    end
  end
end