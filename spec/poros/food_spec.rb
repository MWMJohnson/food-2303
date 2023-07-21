require "rails_helper"

RSpec.describe Food do

  it "exists and has attributes" do
    data = {gtinUpc: 8901020020844, description: "SWEET POTATOES", brandOwner: "NOT A BRANDED ITEM", ingredients: "ORGANIC SWEET POTATOES."}
    @food = Food.new(data)

    expect(@food).to be_a(Food)

    expect(@food.code).to be_an(Integer)
    expect(@food.code).to eq(8901020020844)

    expect(@food.description).to be_a(String)
    expect(@food.description).to eq("SWEET POTATOES")

    expect(@food.brand_owner).to be_a(String)
    expect(@food.brand_owner).to eq("NOT A BRANDED ITEM")

    expect(@food.ingredients).to be_a(String)
    expect(@food.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end