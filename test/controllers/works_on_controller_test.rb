require 'test_helper'

class WorksOnControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get works_on_index_url
    assert_response :success
  end

  test "should get show" do
    get works_on_show_url
    assert_response :success
  end

  test "should get edit" do
    get works_on_edit_url
    assert_response :success
  end

  test "should get new" do
    get works_on_new_url
    assert_response :success
  end

end
