require 'test_helper'

class TimersControllerTest < ActionController::TestCase
  setup do
    @timer = timers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timer" do
    assert_difference('Timer.count') do
      post :create, timer: { created_by: @timer.created_by, notes: @timer.notes, person_id: @timer.person_id, start_time: @timer.start_time, stop_time: @timer.stop_time, updated_by: @timer.updated_by }
    end

    assert_redirected_to timer_path(assigns(:timer))
  end

  test "should show timer" do
    get :show, id: @timer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timer
    assert_response :success
  end

  test "should update timer" do
    patch :update, id: @timer, timer: { created_by: @timer.created_by, notes: @timer.notes, person_id: @timer.person_id, start_time: @timer.start_time, stop_time: @timer.stop_time, updated_by: @timer.updated_by }
    assert_redirected_to timer_path(assigns(:timer))
  end

  test "should destroy timer" do
    assert_difference('Timer.count', -1) do
      delete :destroy, id: @timer
    end

    assert_redirected_to timers_path
  end
end
