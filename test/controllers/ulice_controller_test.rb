require 'test_helper'

class UliceControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ulice = ulice(:one)
  end

  test "should get index" do
    get ulice_index_url
    assert_response :success
  end

  test "should get new" do
    get new_ulice_url
    assert_response :success
  end

  test "should create ulice" do
    assert_difference('Ulice.count') do
      post ulice_index_url, params: { ulice: { index: @ulice.index } }
    end

    assert_redirected_to ulice_url(Ulice.last)
  end

  test "should show ulice" do
    get ulice_url(@ulice)
    assert_response :success
  end

  test "should get edit" do
    get edit_ulice_url(@ulice)
    assert_response :success
  end

  test "should update ulice" do
    patch ulice_url(@ulice), params: { ulice: { index: @ulice.index } }
    assert_redirected_to ulice_url(@ulice)
  end

  test "should destroy ulice" do
    assert_difference('Ulice.count', -1) do
      delete ulice_url(@ulice)
    end

    assert_redirected_to ulice_index_url
  end
end
