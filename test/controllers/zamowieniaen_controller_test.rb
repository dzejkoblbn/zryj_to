require 'test_helper'

class ZamowieniaenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zamowieniaen = zamowieniaen(:one)
  end

  test "should get index" do
    get zamowieniaen_url
    assert_response :success
  end

  test "should get new" do
    get new_zamowieniaen_url
    assert_response :success
  end

  test "should create zamowieniaen" do
    assert_difference('Zamowienia.count') do
      post zamowieniaen_url, params: { zamowieniaen: { code: @zamowieniaen.code, description: @zamowieniaen.description, name: @zamowieniaen.name } }
    end

    assert_redirected_to zamowieniaen_url(Zamowienia.last)
  end

  test "should show zamowieniaen" do
    get zamowieniaen_url(@zamowieniaen)
    assert_response :success
  end

  test "should get edit" do
    get edit_zamowieniaen_url(@zamowieniaen)
    assert_response :success
  end

  test "should update zamowieniaen" do
    patch zamowieniaen_url(@zamowieniaen), params: { zamowieniaen: { code: @zamowieniaen.code, description: @zamowieniaen.description, name: @zamowieniaen.name } }
    assert_redirected_to zamowieniaen_url(@zamowieniaen)
  end

  test "should destroy zamowieniaen" do
    assert_difference('Zamowienia.count', -1) do
      delete zamowieniaen_url(@zamowieniaen)
    end

    assert_redirected_to zamowieniaen_url
  end
end
