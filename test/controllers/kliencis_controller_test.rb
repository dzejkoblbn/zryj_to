require 'test_helper'

class KliencisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klienci = kliencis(:one)
  end

  test "should get index" do
    get kliencis_url
    assert_response :success
  end

  test "should get new" do
    get new_klienci_url
    assert_response :success
  end

  test "should create klienci" do
    assert_difference('Klienci.count') do
      post kliencis_url, params: { klienci: { id_klienta: @klienci.id_klienta, imie: @klienci.imie, kod_pocztowy: @klienci.kod_pocztowy, nazwisko: @klienci.nazwisko, numer_lokalu: @klienci.numer_lokalu, ulica: @klienci.ulica, zamowienia_id: @klienci.zamowienia_id } }
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
    patch klienci_url(@klienci), params: { klienci: { id_klienta: @klienci.id_klienta, imie: @klienci.imie, kod_pocztowy: @klienci.kod_pocztowy, nazwisko: @klienci.nazwisko, numer_lokalu: @klienci.numer_lokalu, ulica: @klienci.ulica, zamowienia_id: @klienci.zamowienia_id } }
    assert_redirected_to klienci_url(@klienci)
  end

  test "should destroy klienci" do
    assert_difference('Klienci.count', -1) do
      delete klienci_url(@klienci)
    end

    assert_redirected_to kliencis_url
  end
end
