require 'test_helper'

class SyllabiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get syllabi_index_url
    assert_response :success
  end

  test "should get show" do
    get syllabi_show_url
    assert_response :success
  end

  test "should get delete" do
    get syllabi_delete_url
    assert_response :success
  end

  test "should get new" do
    get syllabi_new_url
    assert_response :success
  end

  test "should get edit" do
    get syllabi_edit_url
    assert_response :success
  end

  test "should get update" do
    get syllabi_update_url
    assert_response :success
  end

end
