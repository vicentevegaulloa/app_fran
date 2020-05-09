require 'test_helper'

class LocalUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get local_users_index_url
    assert_response :success
  end

  test "should get new" do
    get local_users_new_url
    assert_response :success
  end

  test "should get create" do
    get local_users_create_url
    assert_response :success
  end

  test "should get show" do
    get local_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get local_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get local_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get local_users_destroy_url
    assert_response :success
  end

end
