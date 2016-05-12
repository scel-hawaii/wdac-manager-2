require 'test_helper'

class BatteryHistoriesControllerTest < ActionController::TestCase
  setup do
    @battery_history = battery_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:battery_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create battery_history" do
    assert_difference('BatteryHistory.count') do
      post :create, battery_history: { battery_id: @battery_history.battery_id, initial_use: @battery_history.initial_use, type: @battery_history.type, weatherbox_id: @battery_history.weatherbox_id }
    end

    assert_redirected_to battery_history_path(assigns(:battery_history))
  end

  test "should show battery_history" do
    get :show, id: @battery_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @battery_history
    assert_response :success
  end

  test "should update battery_history" do
    patch :update, id: @battery_history, battery_history: { battery_id: @battery_history.battery_id, initial_use: @battery_history.initial_use, type: @battery_history.type, weatherbox_id: @battery_history.weatherbox_id }
    assert_redirected_to battery_history_path(assigns(:battery_history))
  end

  test "should destroy battery_history" do
    assert_difference('BatteryHistory.count', -1) do
      delete :destroy, id: @battery_history
    end

    assert_redirected_to battery_histories_path
  end
end
