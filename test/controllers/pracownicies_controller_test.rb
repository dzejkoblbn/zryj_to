require 'test_helper'

class PracowniciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pracownicy = pracownicies(:one)
  end

  test "should get index" do
    get pracownicies_url
    assert_response :success
  end

  test "should get new" do
    get new_pracownicy_url
    assert_response :success
  end

  test "should create pracownicy" do
    assert_difference('Pracownicy.count') do
      post pracownicies_url, params: { pracownicy: { id_pracownika: @pracownicy.id_pracownika, imie: @pracownicy.imie, nazwisko: @pracownicy.nazwisko, zamowienia_id: @pracownicy.zamowienia_id, zarobki: @pracownicy.zarobki } }
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
    patch pracownicy_url(@pracownicy), params: { pracownicy: { id_pracownika: @pracownicy.id_pracownika, imie: @pracownicy.imie, nazwisko: @pracownicy.nazwisko, zamowienia_id: @pracownicy.zamowienia_id, zarobki: @pracownicy.zarobki } }
    assert_redirected_to pracownicy_url(@pracownicy)
  end

  test "should destroy pracownicy" do
    assert_difference('Pracownicy.count', -1) do
      delete pracownicy_url(@pracownicy)
    end

    assert_redirected_to pracownicies_url
  end
end
