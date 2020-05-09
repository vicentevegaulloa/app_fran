require 'test_helper'

class LocalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get locals_index_url
    assert_response :success
  end

  test "should get new" do
    get locals_new_url
    assert_response :success
  end

  test "should get create" do
    get locals_create_url
    assert_response :success
  end

  test "should get show" do
    get locals_show_url
    assert_response :success
  end

  test "should get edit" do
    get locals_edit_url
    assert_response :success
  end

  test "should get update" do
    get locals_update_url
    assert_response :success
  end

  test "should get destroy" do
    get locals_destroy_url
    assert_response :success
  end

end
