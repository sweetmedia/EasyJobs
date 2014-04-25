require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { company_logo: @job.company_logo, company_name: @job.company_name, company_website: @job.company_website, job_apply: @job.job_apply, job_category: @job.job_category, job_description: @job.job_description, job_location: @job.job_location, job_salary: @job.job_salary, job_tags: @job.job_tags, job_title: @job.job_title, job_type: @job.job_type }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { company_logo: @job.company_logo, company_name: @job.company_name, company_website: @job.company_website, job_apply: @job.job_apply, job_category: @job.job_category, job_description: @job.job_description, job_location: @job.job_location, job_salary: @job.job_salary, job_tags: @job.job_tags, job_title: @job.job_title, job_type: @job.job_type }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
