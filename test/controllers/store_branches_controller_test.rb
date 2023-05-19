require "test_helper"

class StoreBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_branch = store_branches(:one)
  end

  test "should get index" do
    get store_branches_url, as: :json
    assert_response :success
  end

  test "should create store_branch" do
    assert_difference("StoreBranch.count") do
      post store_branches_url, params: { store_branch: { coordinates: @store_branch.coordinates, location_name: @store_branch.location_name, name: @store_branch.name, store_id: @store_branch.store_id } }, as: :json
    end

    assert_response :created
  end

  test "should show store_branch" do
    get store_branch_url(@store_branch), as: :json
    assert_response :success
  end

  test "should update store_branch" do
    patch store_branch_url(@store_branch), params: { store_branch: { coordinates: @store_branch.coordinates, location_name: @store_branch.location_name, name: @store_branch.name, store_id: @store_branch.store_id } }, as: :json
    assert_response :success
  end

  test "should destroy store_branch" do
    assert_difference("StoreBranch.count", -1) do
      delete store_branch_url(@store_branch), as: :json
    end

    assert_response :no_content
  end
end
