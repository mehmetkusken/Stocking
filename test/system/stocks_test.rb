require "application_system_test_case"

class StocksTest < ApplicationSystemTestCase
  setup do
    @stock = stocks(:one)
  end

  test "visiting the index" do
    visit stocks_url
    assert_selector "h1", text: "Stocks"
  end

  test "creating a Stock" do
    visit stocks_url
    click_on "New Stock"

    fill_in "Hacim", with: @stock.hacim
    fill_in "Hacimstr", with: @stock.hacimstr
    fill_in "Hisse", with: @stock.hisse
    fill_in "Lastprice", with: @stock.lastprice
    fill_in "Lastpricestr", with: @stock.lastpricestr
    fill_in "Name", with: @stock.name
    fill_in "Rate", with: @stock.rate
    click_on "Create Stock"

    assert_text "Stock was successfully created"
    click_on "Back"
  end

  test "updating a Stock" do
    visit stocks_url
    click_on "Edit", match: :first

    fill_in "Hacim", with: @stock.hacim
    fill_in "Hacimstr", with: @stock.hacimstr
    fill_in "Hisse", with: @stock.hisse
    fill_in "Lastprice", with: @stock.lastprice
    fill_in "Lastpricestr", with: @stock.lastpricestr
    fill_in "Name", with: @stock.name
    fill_in "Rate", with: @stock.rate
    click_on "Update Stock"

    assert_text "Stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock" do
    visit stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock was successfully destroyed"
  end
end
