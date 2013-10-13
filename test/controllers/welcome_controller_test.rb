require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get professional" do
    get :professional
    assert_response :success
  end

  test "should get student" do
    get :student
    assert_response :success
  end

end
