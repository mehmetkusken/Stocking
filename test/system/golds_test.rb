require "application_system_test_case"

class GoldsTest < ApplicationSystemTestCase
  setup do
    @gold = golds(:one)
  end

  test "visiting the index" do
    visit golds_url
    assert_selector "h1", text: "Golds"
  end

  test "creating a Gold" do
    visit golds_url
    click_on "New Gold"

    fill_in "Buy", with: @gold.buy
    fill_in "Name", with: @gold.name
    fill_in "Sell", with: @gold.sell
    click_on "Create Gold"

    assert_text "Gold was successfully created"
    click_on "Back"
  end

  test "updating a Gold" do
    visit golds_url
    click_on "Edit", match: :first

    fill_in "Buy", with: @gold.buy
    fill_in "Name", with: @gold.name
    fill_in "Sell", with: @gold.sell
    click_on "Update Gold"

    assert_text "Gold was successfully updated"
    click_on "Back"
  end

  test "destroying a Gold" do
    visit golds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gold was successfully destroyed"
  end
end
