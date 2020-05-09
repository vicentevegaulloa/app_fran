require 'test_helper'

class MatchUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get match_users_index_url
    assert_response :success
  end

  test "should get new" do
    get match_users_new_url
    assert_response :success
  end

  test "should get create" do
    get match_users_create_url
    assert_response :success
  end

  test "should get show" do
    get match_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get match_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get match_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get match_users_destroy_url
    assert_response :success
  end

end
