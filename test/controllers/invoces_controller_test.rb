require 'test_helper'

class InvocesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoce = invoces(:one)
  end

  test "should get index" do
    get invoces_url
    assert_response :success
  end

  test "should get new" do
    get new_invoce_url
    assert_response :success
  end

  test "should create invoce" do
    assert_difference('Invoce.count') do
      post invoces_url, params: { invoce: { name: @invoce.name, value: @invoce.value } }
    end

    assert_redirected_to invoce_url(Invoce.last)
  end

  test "should show invoce" do
    get invoce_url(@invoce)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoce_url(@invoce)
    assert_response :success
  end

  test "should update invoce" do
    patch invoce_url(@invoce), params: { invoce: { name: @invoce.name, value: @invoce.value } }
    assert_redirected_to invoce_url(@invoce)
  end

  test "should destroy invoce" do
    assert_difference('Invoce.count', -1) do
      delete invoce_url(@invoce)
    end

    assert_redirected_to invoces_url
  end
end
