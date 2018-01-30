require 'test_helper'

class ZamowieniaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zamowienium = zamowienia(:one)
  end

  test "should get index" do
    get zamowienia_url
    assert_response :success
  end

  test "should get new" do
    get new_zamowienium_url
    assert_response :success
  end

  test "should create zamowienium" do
    assert_difference('Zamowienium.count') do
      post zamowienia_url, params: { zamowienium: { index: @zamowienium.index } }
    end

    assert_redirected_to zamowienium_url(Zamowienium.last)
  end

  test "should show zamowienium" do
    get zamowienium_url(@zamowienium)
    assert_response :success
  end

  test "should get edit" do
    get edit_zamowienium_url(@zamowienium)
    assert_response :success
  end

  test "should update zamowienium" do
    patch zamowienium_url(@zamowienium), params: { zamowienium: { index: @zamowienium.index } }
    assert_redirected_to zamowienium_url(@zamowienium)
  end

  test "should destroy zamowienium" do
    assert_difference('Zamowienium.count', -1) do
      delete zamowienium_url(@zamowienium)
    end

    assert_redirected_to zamowienia_url
  end
end
