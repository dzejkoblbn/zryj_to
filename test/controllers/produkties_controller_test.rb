require 'test_helper'

class ProduktiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produkty = produkties(:one)
  end

  test "should get index" do
    get produkties_url
    assert_response :success
  end

  test "should get new" do
    get new_produkty_url
    assert_response :success
  end

  test "should create produkty" do
    assert_difference('Produkty.count') do
      post produkties_url, params: { produkty: { cena: @produkty.cena, czas_przygotowania: @produkty.czas_przygotowania, id_produktu: @produkty.id_produktu, nazwa: @produkty.nazwa, produkty_na_zamowieniu_id: @produkty.produkty_na_zamowieniu_id } }
    end

    assert_redirected_to produkty_url(Produkty.last)
  end

  test "should show produkty" do
    get produkty_url(@produkty)
    assert_response :success
  end

  test "should get edit" do
    get edit_produkty_url(@produkty)
    assert_response :success
  end

  test "should update produkty" do
    patch produkty_url(@produkty), params: { produkty: { cena: @produkty.cena, czas_przygotowania: @produkty.czas_przygotowania, id_produktu: @produkty.id_produktu, nazwa: @produkty.nazwa, produkty_na_zamowieniu_id: @produkty.produkty_na_zamowieniu_id } }
    assert_redirected_to produkty_url(@produkty)
  end

  test "should destroy produkty" do
    assert_difference('Produkty.count', -1) do
      delete produkty_url(@produkty)
    end

    assert_redirected_to produkties_url
  end
end
