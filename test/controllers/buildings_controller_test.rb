# frozen_string_literal: true

require 'test_helper'

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @building = buildings(:one)
    @user = users(:one)
    @auth_headers = { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials(@user.email,
                                                                                                    'password') }
  end

  test 'should get index' do
    get buildings_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create building' do
    assert_difference('Building.count') do
      post buildings_url,
           params: { building: { availability: @building.availability, building_type: @building.building_type,
                                 description: @building.description, image_url: @building.image_url, location: @building.location, name: @building.name, owner_id: @building.owner_id, rate: @building.rate } },
           headers: @auth_headers,
           as: :json
    end

    assert_response :created
  end

  test 'should show building' do
    get building_url(@building), headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should update building' do
    patch building_url(@building),
          params: { building: { availability: @building.availability, building_type: @building.building_type,
                                description: @building.description, image_url: @building.image_url, location: @building.location, name: @building.name, owner_id: @building.owner_id, rate: @building.rate } },
          headers: @auth_headers,
          as: :json
    assert_response :success
  end

  test 'should destroy building' do
    assert_difference('Building.count', -1) do
      delete building_url(@building), headers: @auth_headers, as: :json
    end

    assert_response :no_content
  end
end
