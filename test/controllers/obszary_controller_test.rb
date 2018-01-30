require 'test_helper'

class ObszaryControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obszary = obszary(:one)
  end

  test "should get index" do
    get obszary_index_url
    assert_response :success
  end

  test "should get new" do
    get new_obszary_url
    assert_response :success
  end

  test "should create obszary" do
    assert_difference('Obszary.count') do
      post obszary_index_url, params: { obszary: { index: @obszary.index } }
    end

    assert_redirected_to obszary_url(Obszary.last)
  end

  test "should show obszary" do
    get obszary_url(@obszary)
    assert_response :success
  end

  test "should get edit" do
    get edit_obszary_url(@obszary)
    assert_response :success
  end

  test "should update obszary" do
    patch obszary_url(@obszary), params: { obszary: { index: @obszary.index } }
    assert_redirected_to obszary_url(@obszary)
  end

  test "should destroy obszary" do
    assert_difference('Obszary.count', -1) do
      delete obszary_url(@obszary)
    end

    assert_redirected_to obszary_index_url
  end
end
