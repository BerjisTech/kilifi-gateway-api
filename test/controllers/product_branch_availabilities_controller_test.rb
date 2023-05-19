# frozen_string_literal: true

require 'test_helper'

class ProductBranchAvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_branch_availability = product_branch_availabilities(:one)
  end

  test 'should get index' do
    get product_branch_availabilities_url, as: :json
    assert_response :success
  end

  test 'should create product_branch_availability' do
    assert_difference('ProductBranchAvailability.count') do
      post product_branch_availabilities_url,
           params: { product_branch_availability: { availability: @product_branch_availability.availability, product_id: @product_branch_availability.product_id, store_branch_id: @product_branch_availability.store_branch_id } }, as: :json
    end

    assert_response :created
  end

  test 'should show product_branch_availability' do
    get product_branch_availability_url(@product_branch_availability), as: :json
    assert_response :success
  end

  test 'should update product_branch_availability' do
    patch product_branch_availability_url(@product_branch_availability),
          params: { product_branch_availability: { availability: @product_branch_availability.availability, product_id: @product_branch_availability.product_id, store_branch_id: @product_branch_availability.store_branch_id } }, as: :json
    assert_response :success
  end

  test 'should destroy product_branch_availability' do
    assert_difference('ProductBranchAvailability.count', -1) do
      delete product_branch_availability_url(@product_branch_availability), as: :json
    end

    assert_response :no_content
  end
end
