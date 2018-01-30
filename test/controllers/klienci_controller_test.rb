require 'test_helper'

class KlienciControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klienci = klienci(:one)
  end

  test "should get index" do
    get klienci_index_url
    assert_response :success
  end

  test "should get new" do
    get new_klienci_url
    assert_response :success
  end

  test "should create klienci" do
    assert_difference('Klienci.count') do
      post klienci_index_url, params: { klienci: { index: @klienci.index } }
    end

    assert_redirected_to klienci_url(Klienci.last)
  end

  test "should show klienci" do
    get klienci_url(@klienci)
    assert_response :success
  end

  test "should get edit" do
    get edit_klienci_url(@klienci)
    assert_response :success
  end

  test "should update klienci" do
    patch klienci_url(@klienci), params: { klienci: { index: @klienci.index } }
    assert_redirected_to klienci_url(@klienci)
  end

  test "should destroy klienci" do
    assert_difference('Klienci.count', -1) do
      delete klienci_url(@klienci)
    end

    assert_redirected_to klienci_index_url
  end
end
