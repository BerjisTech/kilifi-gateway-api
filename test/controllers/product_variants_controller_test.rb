require "test_helper"

class ProductVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_variant = product_variants(:one)
  end

  test "should get index" do
    get product_variants_url, as: :json
    assert_response :success
  end

  test "should create product_variant" do
    assert_difference("ProductVariant.count") do
      post product_variants_url, params: { product_variant: { description: @product_variant.description, name: @product_variant.name, price_difference: @product_variant.price_difference, product_id: @product_variant.product_id } }, as: :json
    end

    assert_response :created
  end

  test "should show product_variant" do
    get product_variant_url(@product_variant), as: :json
    assert_response :success
  end

  test "should update product_variant" do
    patch product_variant_url(@product_variant), params: { product_variant: { description: @product_variant.description, name: @product_variant.name, price_difference: @product_variant.price_difference, product_id: @product_variant.product_id } }, as: :json
    assert_response :success
  end

  test "should destroy product_variant" do
    assert_difference("ProductVariant.count", -1) do
      delete product_variant_url(@product_variant), as: :json
    end

    assert_response :no_content
  end
end
