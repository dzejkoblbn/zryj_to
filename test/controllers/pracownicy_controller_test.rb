require 'test_helper'

class PracownicyControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pracownicy = pracownicy(:one)
  end

  test "should get index" do
    get pracownicy_index_url
    assert_response :success
  end

  test "should get new" do
    get new_pracownicy_url
    assert_response :success
  end

  test "should create pracownicy" do
    assert_difference('Pracownicy.count') do
      post pracownicy_index_url, params: { pracownicy: { index: @pracownicy.index } }
    end

    assert_redirected_to pracownicy_url(Pracownicy.last)
  end

  test "should show pracownicy" do
    get pracownicy_url(@pracownicy)
    assert_response :success
  end

  test "should get edit" do
    get edit_pracownicy_url(@pracownicy)
    assert_response :success
  end

  test "should update pracownicy" do
    patch pracownicy_url(@pracownicy), params: { pracownicy: { index: @pracownicy.index } }
    assert_redirected_to pracownicy_url(@pracownicy)
  end

  test "should destroy pracownicy" do
    assert_difference('Pracownicy.count', -1) do
      delete pracownicy_url(@pracownicy)
    end

    assert_redirected_to pracownicy_index_url
  end
end
