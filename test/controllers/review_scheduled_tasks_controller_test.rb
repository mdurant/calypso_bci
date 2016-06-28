require 'test_helper'

class ReviewScheduledTasksControllerTest < ActionController::TestCase
  setup do
    @review_scheduled_task = review_scheduled_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_scheduled_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_scheduled_task" do
    assert_difference('ReviewScheduledTask.count') do
      post :create, review_scheduled_task: { comment_to_day: @review_scheduled_task.comment_to_day, date: @review_scheduled_task.date, end: @review_scheduled_task.end, observation: @review_scheduled_task.observation, start: @review_scheduled_task.start, task_id: @review_scheduled_task.task_id, user_id: @review_scheduled_task.user_id }
    end

    assert_redirected_to review_scheduled_task_path(assigns(:review_scheduled_task))
  end

  test "should show review_scheduled_task" do
    get :show, id: @review_scheduled_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review_scheduled_task
    assert_response :success
  end

  test "should update review_scheduled_task" do
    patch :update, id: @review_scheduled_task, review_scheduled_task: { comment_to_day: @review_scheduled_task.comment_to_day, date: @review_scheduled_task.date, end: @review_scheduled_task.end, observation: @review_scheduled_task.observation, start: @review_scheduled_task.start, task_id: @review_scheduled_task.task_id, user_id: @review_scheduled_task.user_id }
    assert_redirected_to review_scheduled_task_path(assigns(:review_scheduled_task))
  end

  test "should destroy review_scheduled_task" do
    assert_difference('ReviewScheduledTask.count', -1) do
      delete :destroy, id: @review_scheduled_task
    end

    assert_redirected_to review_scheduled_tasks_path
  end
end
