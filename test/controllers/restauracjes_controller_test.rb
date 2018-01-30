require 'test_helper'

class RestauracjesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restauracje = restauracjes(:one)
  end

  test "should get index" do
    get restauracjes_url
    assert_response :success
  end

  test "should get new" do
    get new_restauracje_url
    assert_response :success
  end

  test "should create restauracje" do
    assert_difference('Restauracje.count') do
      post restauracjes_url, params: { restauracje: { id_restauracji: @restauracje.id_restauracji, kod_pocztowy: @restauracje.kod_pocztowy, nazwa: @restauracje.nazwa, numer_lokalu: @restauracje.numer_lokalu, pracownicy_id: @restauracje.pracownicy_id, ulica: @restauracje.ulica } }
    end

    assert_redirected_to restauracje_url(Restauracje.last)
  end

  test "should show restauracje" do
    get restauracje_url(@restauracje)
    assert_response :success
  end

  test "should get edit" do
    get edit_restauracje_url(@restauracje)
    assert_response :success
  end

  test "should update restauracje" do
    patch restauracje_url(@restauracje), params: { restauracje: { id_restauracji: @restauracje.id_restauracji, kod_pocztowy: @restauracje.kod_pocztowy, nazwa: @restauracje.nazwa, numer_lokalu: @restauracje.numer_lokalu, pracownicy_id: @restauracje.pracownicy_id, ulica: @restauracje.ulica } }
    assert_redirected_to restauracje_url(@restauracje)
  end

  test "should destroy restauracje" do
    assert_difference('Restauracje.count', -1) do
      delete restauracje_url(@restauracje)
    end

    assert_redirected_to restauracjes_url
  end
end
