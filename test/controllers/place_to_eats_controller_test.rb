require 'test_helper'

class PlaceToEatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @place_to_eat = place_to_eats(:one)
  end

  test "should get index" do
    get place_to_eats_url
    assert_response :success
  end

  test "should get new" do
    get new_place_to_eat_url
    assert_response :success
  end

  test "should create place_to_eat" do
    assert_difference('PlaceToEat.count') do
      post place_to_eats_url, params: { place_to_eat: { address: @place_to_eat.address, latitude: @place_to_eat.latitude, longitude: @place_to_eat.longitude, name: @place_to_eat.name, tel: @place_to_eat.tel, url: @place_to_eat.url } }
    end

    assert_redirected_to place_to_eat_url(PlaceToEat.last)
  end

  test "should show place_to_eat" do
    get place_to_eat_url(@place_to_eat)
    assert_response :success
  end

  test "should get edit" do
    get edit_place_to_eat_url(@place_to_eat)
    assert_response :success
  end

  test "should update place_to_eat" do
    patch place_to_eat_url(@place_to_eat), params: { place_to_eat: { address: @place_to_eat.address, latitude: @place_to_eat.latitude, longitude: @place_to_eat.longitude, name: @place_to_eat.name, tel: @place_to_eat.tel, url: @place_to_eat.url } }
    assert_redirected_to place_to_eat_url(@place_to_eat)
  end

  test "should destroy place_to_eat" do
    assert_difference('PlaceToEat.count', -1) do
      delete place_to_eat_url(@place_to_eat)
    end

    assert_redirected_to place_to_eats_url
  end
end
