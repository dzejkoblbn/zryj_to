require 'test_helper'

class RestauracjeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restauracje = restauracje(:one)
  end

  test "should get index" do
    get restauracje_index_url
    assert_response :success
  end

  test "should get new" do
    get new_restauracje_url
    assert_response :success
  end

  test "should create restauracje" do
    assert_difference('Restauracje.count') do
      post restauracje_index_url, params: { restauracje: { index: @restauracje.index } }
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
    patch restauracje_url(@restauracje), params: { restauracje: { index: @restauracje.index } }
    assert_redirected_to restauracje_url(@restauracje)
  end

  test "should destroy restauracje" do
    assert_difference('Restauracje.count', -1) do
      delete restauracje_url(@restauracje)
    end

    assert_redirected_to restauracje_index_url
  end
end
