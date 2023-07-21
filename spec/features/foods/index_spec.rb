# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients

require "rails_helper"

RSpec.describe "foods_path", type: :feature do 
  describe "they search for a food in the search bar" do
    it "routes to the foods index page where search results are rendered" do
      visit root_path

      within ".form-group.search-field" do
        fill_in "q", with: "sweet potatoes"
        click_button "Search"
      end

      expect(current_path).to eq(foods_path)

      # expect(page).to have_content("You have returned 55579 results.")
      expect(page).to have_css(".food", count: 10)

      within(first(".food")) do
        within(".code") do
          expect(page).to have_content("8901020020844")
        end
        within(".description") do
          expect(page).to have_content("SWEET POTATOES")
        end
        within(".brand_owner") do
          expect(page).to have_content("NOT A BRANDED ITEM")
        end
        within(".ingredients") do
          expect(page).to have_content("ORGANIC SWEET POTATOES.")
        end
      end
    end
  end
end