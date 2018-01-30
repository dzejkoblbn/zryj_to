require 'test_helper'

class ProduktyControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produkty = produkty(:one)
  end

  test "should get index" do
    get produkty_index_url
    assert_response :success
  end

  test "should get new" do
    get new_produkty_url
    assert_response :success
  end

  test "should create produkty" do
    assert_difference('Produkty.count') do
      post produkty_index_url, params: { produkty: { index: @produkty.index } }
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
    patch produkty_url(@produkty), params: { produkty: { index: @produkty.index } }
    assert_redirected_to produkty_url(@produkty)
  end

  test "should destroy produkty" do
    assert_difference('Produkty.count', -1) do
      delete produkty_url(@produkty)
    end

    assert_redirected_to produkty_index_url
  end
end
