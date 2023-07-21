require "rails_helper"

RSpec.describe FoodService do
  describe "instance methods" do
    context "#search foods by keyword" do
      it "returns food data based on keyword" do
        search = FoodService.new.get_food_by_search("sweet potatoes")
      
        expect(search).to be_an(Hash)
        expect(search[:foods]).to be_an(Array)
      
        food_data = search[:foods].first
      
        expect(food_data).to have_key(:gtinUpc)
        expect(food_data[:gtinUpc]).to be_a(String)
        expect(food_data[:gtinUpc]).to eq("8901020020844")
      
        expect(food_data).to have_key(:description)
        expect(food_data[:description]).to be_a(String)
        expect(food_data[:description]).to eq("SWEET POTATOES")

        expect(food_data).to have_key(:brandOwner)
        expect(food_data[:brandOwner]).to be_a(String)
        expect(food_data[:brandOwner]).to eq("NOT A BRANDED ITEM")

        expect(food_data).to have_key(:ingredients)
        expect(food_data[:ingredients]).to be_a(String)
        expect(food_data[:ingredients]).to eq("ORGANIC SWEET POTATOES.")
      end
    end
  end
end



