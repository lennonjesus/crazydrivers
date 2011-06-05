require 'test_helper'

class BestLapsControllerTest < ActionController::TestCase
  setup do
    @best_lap = best_laps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:best_laps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create best_lap" do
    assert_difference('BestLap.count') do
      post :create, :best_lap => @best_lap.attributes
    end

    assert_redirected_to best_lap_path(assigns(:best_lap))
  end

  test "should show best_lap" do
    get :show, :id => @best_lap.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @best_lap.to_param
    assert_response :success
  end

  test "should update best_lap" do
    put :update, :id => @best_lap.to_param, :best_lap => @best_lap.attributes
    assert_redirected_to best_lap_path(assigns(:best_lap))
  end

  test "should destroy best_lap" do
    assert_difference('BestLap.count', -1) do
      delete :destroy, :id => @best_lap.to_param
    end

    assert_redirected_to best_laps_path
  end
end
