require 'test_helper'

class ProduktyNaZamowieniuControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produkty_na_zamowieniu = produkty_na_zamowieniu(:one)
  end

  test "should get index" do
    get produkty_na_zamowieniu_index_url
    assert_response :success
  end

  test "should get new" do
    get new_produkty_na_zamowieniu_url
    assert_response :success
  end

  test "should create produkty_na_zamowieniu" do
    assert_difference('ProduktyNaZamowieniu.count') do
      post produkty_na_zamowieniu_index_url, params: { produkty_na_zamowieniu: { index: @produkty_na_zamowieniu.index } }
    end

    assert_redirected_to produkty_na_zamowieniu_url(ProduktyNaZamowieniu.last)
  end

  test "should show produkty_na_zamowieniu" do
    get produkty_na_zamowieniu_url(@produkty_na_zamowieniu)
    assert_response :success
  end

  test "should get edit" do
    get edit_produkty_na_zamowieniu_url(@produkty_na_zamowieniu)
    assert_response :success
  end

  test "should update produkty_na_zamowieniu" do
    patch produkty_na_zamowieniu_url(@produkty_na_zamowieniu), params: { produkty_na_zamowieniu: { index: @produkty_na_zamowieniu.index } }
    assert_redirected_to produkty_na_zamowieniu_url(@produkty_na_zamowieniu)
  end

  test "should destroy produkty_na_zamowieniu" do
    assert_difference('ProduktyNaZamowieniu.count', -1) do
      delete produkty_na_zamowieniu_url(@produkty_na_zamowieniu)
    end

    assert_redirected_to produkty_na_zamowieniu_index_url
  end
end
