require 'test_helper'

class MousControllerTest < ActionController::TestCase
  setup do
    @mou = mous(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mous)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mou" do
    assert_difference('Mou.count') do
      post :create, mou: { availability: @mou.availability, considerations: @mou.considerations, duration: @mou.duration, firstName: @mou.firstName, jobTitle: @mou.jobTitle, lastName: @mou.lastName, phone: @mou.phone }
    end

    assert_redirected_to mou_path(assigns(:mou))
  end

  test "should show mou" do
    get :show, id: @mou
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mou
    assert_response :success
  end

  test "should update mou" do
    patch :update, id: @mou, mou: { availability: @mou.availability, considerations: @mou.considerations, duration: @mou.duration, firstName: @mou.firstName, jobTitle: @mou.jobTitle, lastName: @mou.lastName, phone: @mou.phone }
    assert_redirected_to mou_path(assigns(:mou))
  end

  test "should destroy mou" do
    assert_difference('Mou.count', -1) do
      delete :destroy, id: @mou
    end

    assert_redirected_to mous_path
  end
end
