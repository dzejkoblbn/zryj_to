require 'test_helper'

class TypyPracownikaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typy_pracownika = typy_pracownika(:one)
  end

  test "should get index" do
    get typy_pracownika_index_url
    assert_response :success
  end

  test "should get new" do
    get new_typy_pracownika_url
    assert_response :success
  end

  test "should create typy_pracownika" do
    assert_difference('TypyPracownika.count') do
      post typy_pracownika_index_url, params: { typy_pracownika: { index: @typy_pracownika.index } }
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
    patch typy_pracownika_url(@typy_pracownika), params: { typy_pracownika: { index: @typy_pracownika.index } }
    assert_redirected_to typy_pracownika_url(@typy_pracownika)
  end

  test "should destroy typy_pracownika" do
    assert_difference('TypyPracownika.count', -1) do
      delete typy_pracownika_url(@typy_pracownika)
    end

    assert_redirected_to typy_pracownika_index_url
  end
end
