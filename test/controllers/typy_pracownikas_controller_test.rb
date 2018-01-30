require 'test_helper'

class TypyPracownikasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typy_pracownika = typy_pracownikas(:one)
  end

  test "should get index" do
    get typy_pracownikas_url
    assert_response :success
  end

  test "should get new" do
    get new_typy_pracownika_url
    assert_response :success
  end

  test "should create typy_pracownika" do
    assert_difference('TypyPracownika.count') do
      post typy_pracownikas_url, params: { typy_pracownika: { id_typu: @typy_pracownika.id_typu, nazwa_typu: @typy_pracownika.nazwa_typu, pracownicy_id: @typy_pracownika.pracownicy_id } }
    end

    assert_redirected_to typy_pracownika_url(TypyPracownika.last)
  end

  test "should show typy_pracownika" do
    get typy_pracownika_url(@typy_pracownika)
    assert_response :success
  end

  test "should get edit" do
    get edit_typy_pracownika_url(@typy_pracownika)
    assert_response :success
  end

  test "should update typy_pracownika" do
    patch typy_pracownika_url(@typy_pracownika), params: { typy_pracownika: { id_typu: @typy_pracownika.id_typu, nazwa_typu: @typy_pracownika.nazwa_typu, pracownicy_id: @typy_pracownika.pracownicy_id } }
    assert_redirected_to typy_pracownika_url(@typy_pracownika)
  end

  test "should destroy typy_pracownika" do
    assert_difference('TypyPracownika.count', -1) do
      delete typy_pracownika_url(@typy_pracownika)
    end

    assert_redirected_to typy_pracownikas_url
  end
end
