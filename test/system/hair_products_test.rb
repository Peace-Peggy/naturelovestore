require "application_system_test_case"

class HairProductsTest < ApplicationSystemTestCase
  setup do
    @hair_product = hair_products(:one)
  end

  test "visiting the index" do
    visit hair_products_url
    assert_selector "h1", text: "Hair Products"
  end

  test "creating a Hair product" do
    visit hair_products_url
    click_on "New Hair Product"

    fill_in "Description", with: @hair_product.description
    fill_in "Ingredients", with: @hair_product.ingredients
    fill_in "Name", with: @hair_product.name
    fill_in "Price", with: @hair_product.price
    fill_in "Size", with: @hair_product.size
    fill_in "Type", with: @hair_product.type
    click_on "Create Hair product"

    assert_text "Hair product was successfully created"
    click_on "Back"
  end

  test "updating a Hair product" do
    visit hair_products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @hair_product.description
    fill_in "Ingredients", with: @hair_product.ingredients
    fill_in "Name", with: @hair_product.name
    fill_in "Price", with: @hair_product.price
    fill_in "Size", with: @hair_product.size
    fill_in "Type", with: @hair_product.type
    click_on "Update Hair product"

    assert_text "Hair product was successfully updated"
    click_on "Back"
  end

  test "destroying a Hair product" do
    visit hair_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hair product was successfully destroyed"
  end
end
