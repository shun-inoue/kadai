require 'test_helper'

class DivisionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get divisions_index_url
    assert_response :success
  end

  test "should get show" do
    get divisions_show_url
    assert_response :success
  end

  test "should get edit" do
    get divisions_edit_url
    assert_response :success
  end

  test "should get add" do
    get divisions_add_url
    assert_response :success
  end

end
