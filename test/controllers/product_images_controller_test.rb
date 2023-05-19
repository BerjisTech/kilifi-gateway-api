require "test_helper"

class ProductImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_image = product_images(:one)
  end

  test "should get index" do
    get product_images_url, as: :json
    assert_response :success
  end

  test "should create product_image" do
    assert_difference("ProductImage.count") do
      post product_images_url, params: { product_image: { image_url: @product_image.image_url, product_id: @product_image.product_id } }, as: :json
    end

    assert_response :created
  end

  test "should show product_image" do
    get product_image_url(@product_image), as: :json
    assert_response :success
  end

  test "should update product_image" do
    patch product_image_url(@product_image), params: { product_image: { image_url: @product_image.image_url, product_id: @product_image.product_id } }, as: :json
    assert_response :success
  end

  test "should destroy product_image" do
    assert_difference("ProductImage.count", -1) do
      delete product_image_url(@product_image), as: :json
    end

    assert_response :no_content
  end
end
