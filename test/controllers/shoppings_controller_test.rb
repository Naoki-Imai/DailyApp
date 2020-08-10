require 'test_helper'

class ShoppingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shoppings_index_url
    assert_response :success
  end

  test "should get new" do
    get shoppings_new_url
    assert_response :success
  end

end
