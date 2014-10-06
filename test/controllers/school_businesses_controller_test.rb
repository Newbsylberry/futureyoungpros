require 'test_helper'

class SchoolBusinessesControllerTest < ActionController::TestCase
  setup do
    @school_business = school_businesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_businesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_business" do
    assert_difference('SchoolBusiness.count') do
      post :create, school_business: { business_id: @school_business.business_id, school_id: @school_business.school_id }
    end

    assert_redirected_to school_business_path(assigns(:school_business))
  end

  test "should show school_business" do
    get :show, id: @school_business
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_business
    assert_response :success
  end

  test "should update school_business" do
    patch :update, id: @school_business, school_business: { business_id: @school_business.business_id, school_id: @school_business.school_id }
    assert_redirected_to school_business_path(assigns(:school_business))
  end

  test "should destroy school_business" do
    assert_difference('SchoolBusiness.count', -1) do
      delete :destroy, id: @school_business
    end

    assert_redirected_to school_businesses_path
  end
end
