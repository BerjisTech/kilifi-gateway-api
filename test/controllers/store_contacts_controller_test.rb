require "test_helper"

class StoreContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_contact = store_contacts(:one)
  end

  test "should get index" do
    get store_contacts_url, as: :json
    assert_response :success
  end

  test "should create store_contact" do
    assert_difference("StoreContact.count") do
      post store_contacts_url, params: { store_contact: { contact_email: @store_contact.contact_email, contact_name: @store_contact.contact_name, contact_phone: @store_contact.contact_phone, store_id: @store_contact.store_id } }, as: :json
    end

    assert_response :created
  end

  test "should show store_contact" do
    get store_contact_url(@store_contact), as: :json
    assert_response :success
  end

  test "should update store_contact" do
    patch store_contact_url(@store_contact), params: { store_contact: { contact_email: @store_contact.contact_email, contact_name: @store_contact.contact_name, contact_phone: @store_contact.contact_phone, store_id: @store_contact.store_id } }, as: :json
    assert_response :success
  end

  test "should destroy store_contact" do
    assert_difference("StoreContact.count", -1) do
      delete store_contact_url(@store_contact), as: :json
    end

    assert_response :no_content
  end
end
