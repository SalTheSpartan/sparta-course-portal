require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lessons_index_url
    assert_response :success
  end

  test "should get show" do
    get lessons_show_url
    assert_response :success
  end

  test "should get delete" do
    get lessons_delete_url
    assert_response :success
  end

  test "should get new" do
    get lessons_new_url
    assert_response :success
  end

end
