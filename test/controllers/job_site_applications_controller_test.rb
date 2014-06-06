require 'test_helper'

class JobSiteApplicationsControllerTest < ActionController::TestCase
  setup do
    @job_site_application = job_site_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_site_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_site_application" do
    assert_difference('JobSiteApplication.count') do
      post :create, job_site_application: { business_id: @job_site_application.business_id, first_name: @job_site_application.first_name, last_name: @job_site_application.last_name, school_id: @job_site_application.school_id }
    end

    assert_redirected_to job_site_application_path(assigns(:job_site_application))
  end

  test "should show job_site_application" do
    get :show, id: @job_site_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_site_application
    assert_response :success
  end

  test "should update job_site_application" do
    patch :update, id: @job_site_application, job_site_application: { business_id: @job_site_application.business_id, first_name: @job_site_application.first_name, last_name: @job_site_application.last_name, school_id: @job_site_application.school_id }
    assert_redirected_to job_site_application_path(assigns(:job_site_application))
  end

  test "should destroy job_site_application" do
    assert_difference('JobSiteApplication.count', -1) do
      delete :destroy, id: @job_site_application
    end

    assert_redirected_to job_site_applications_path
  end
end
