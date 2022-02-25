require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { brand_name: @product.brand_name, category_name: @product.category_name, category_rank: @product.category_rank, delivery_price: @product.delivery_price, ingredient: @product.ingredient, point: @product.point, price: @product.price, product_detail: @product.product_detail, product_name: @product.product_name, sale_price: @product.sale_price } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { brand_name: @product.brand_name, category_name: @product.category_name, category_rank: @product.category_rank, delivery_price: @product.delivery_price, ingredient: @product.ingredient, point: @product.point, price: @product.price, product_detail: @product.product_detail, product_name: @product.product_name, sale_price: @product.sale_price } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
