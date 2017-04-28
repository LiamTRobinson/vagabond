require 'test_helper'

class PlanItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get plan_items_create_url
    assert_response :success
  end

  test "should get destroy" do
    get plan_items_destroy_url
    assert_response :success
  end

end
