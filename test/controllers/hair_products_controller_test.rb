require 'test_helper'

class HairProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hair_product = hair_products(:one)
  end

  test "should get index" do
    get hair_products_url
    assert_response :success
  end

  test "should get new" do
    get new_hair_product_url
    assert_response :success
  end

  test "should create hair_product" do
    assert_difference('HairProduct.count') do
      post hair_products_url, params: { hair_product: { description: @hair_product.description, ingredients: @hair_product.ingredients, name: @hair_product.name, price: @hair_product.price, size: @hair_product.size, type: @hair_product.type } }
    end

    assert_redirected_to hair_product_url(HairProduct.last)
  end

  test "should show hair_product" do
    get hair_product_url(@hair_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_hair_product_url(@hair_product)
    assert_response :success
  end

  test "should update hair_product" do
    patch hair_product_url(@hair_product), params: { hair_product: { description: @hair_product.description, ingredients: @hair_product.ingredients, name: @hair_product.name, price: @hair_product.price, size: @hair_product.size, type: @hair_product.type } }
    assert_redirected_to hair_product_url(@hair_product)
  end

  test "should destroy hair_product" do
    assert_difference('HairProduct.count', -1) do
      delete hair_product_url(@hair_product)
    end

    assert_redirected_to hair_products_url
  end
end
