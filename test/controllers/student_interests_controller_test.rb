require 'test_helper'

class StudentInterestsControllerTest < ActionController::TestCase
  setup do
    @student_interest = student_interests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_interests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_interest" do
    assert_difference('StudentInterest.count') do
      post :create, student_interest: { category_id: @student_interest.category_id, firstName: @student_interest.firstName, lastName: @student_interest.lastName, school_id: @student_interest.school_id }
    end

    assert_redirected_to student_interest_path(assigns(:student_interest))
  end

  test "should show student_interest" do
    get :show, id: @student_interest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_interest
    assert_response :success
  end

  test "should update student_interest" do
    patch :update, id: @student_interest, student_interest: { category_id: @student_interest.category_id, firstName: @student_interest.firstName, lastName: @student_interest.lastName, school_id: @student_interest.school_id }
    assert_redirected_to student_interest_path(assigns(:student_interest))
  end

  test "should destroy student_interest" do
    assert_difference('StudentInterest.count', -1) do
      delete :destroy, id: @student_interest
    end

    assert_redirected_to student_interests_path
  end
end
