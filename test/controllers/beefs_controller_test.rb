require 'test_helper'

class BeefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beef = beefs(:one)
  end

  test "should get index" do
    get beefs_url
    assert_response :success
  end

  test "should get new" do
    get new_beef_url
    assert_response :success
  end

  test "should create beef" do
    assert_difference('Beef.count') do
      post beefs_url, params: { beef: { name: @beef.name } }
    end

    assert_redirected_to beef_url(Beef.last)
  end

  test "should show beef" do
    get beef_url(@beef)
    assert_response :success
  end

  test "should get edit" do
    get edit_beef_url(@beef)
    assert_response :success
  end

  test "should update beef" do
    patch beef_url(@beef), params: { beef: { name: @beef.name } }
    assert_redirected_to beef_url(@beef)
  end

  test "should destroy beef" do
    assert_difference('Beef.count', -1) do
      delete beef_url(@beef)
    end

    assert_redirected_to beefs_url
  end
end
