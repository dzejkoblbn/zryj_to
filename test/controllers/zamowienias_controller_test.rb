require 'test_helper'

class ZamowieniasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zamowienia = zamowienias(:one)
  end

  test "should get index" do
    get zamowienias_url
    assert_response :success
  end

  test "should get new" do
    get new_zamowienia_url
    assert_response :success
  end

  test "should create zamowienia" do
    assert_difference('Zamowienia.count') do
      post zamowienias_url, params: { zamowienia: { czas_realizacji: @zamowienia.czas_realizacji, id_zamowienia: @zamowienia.id_zamowienia, produkty_na_zamowieniu_id: @zamowienia.produkty_na_zamowieniu_id } }
    end

    assert_redirected_to zamowienia_url(Zamowienia.last)
  end

  test "should show zamowienia" do
    get zamowienia_url(@zamowienia)
    assert_response :success
  end

  test "should get edit" do
    get edit_zamowienia_url(@zamowienia)
    assert_response :success
  end

  test "should update zamowienia" do
    patch zamowienia_url(@zamowienia), params: { zamowienia: { czas_realizacji: @zamowienia.czas_realizacji, id_zamowienia: @zamowienia.id_zamowienia, produkty_na_zamowieniu_id: @zamowienia.produkty_na_zamowieniu_id } }
    assert_redirected_to zamowienia_url(@zamowienia)
  end

  test "should destroy zamowienia" do
    assert_difference('Zamowienia.count', -1) do
      delete zamowienia_url(@zamowienia)
    end

    assert_redirected_to zamowienias_url
  end
end
