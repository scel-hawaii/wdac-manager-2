require 'test_helper'

class WeatherboxesControllerTest < ActionController::TestCase
  setup do
    @weatherbox = weatherboxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weatherboxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weatherbox" do
    assert_difference('Weatherbox.count') do
      post :create, weatherbox: { box_id: @weatherbox.box_id, hardware_id: @weatherbox.hardware_id, location_id: @weatherbox.location_id, network_id: @weatherbox.network_id, node_type: @weatherbox.node_type, software_id: @weatherbox.software_id, xbee_address: @weatherbox.xbee_address }
    end

    assert_redirected_to weatherbox_path(assigns(:weatherbox))
  end

  test "should show weatherbox" do
    get :show, id: @weatherbox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weatherbox
    assert_response :success
  end

  test "should update weatherbox" do
    patch :update, id: @weatherbox, weatherbox: { box_id: @weatherbox.box_id, hardware_id: @weatherbox.hardware_id, location_id: @weatherbox.location_id, network_id: @weatherbox.network_id, node_type: @weatherbox.node_type, software_id: @weatherbox.software_id, xbee_address: @weatherbox.xbee_address }
    assert_redirected_to weatherbox_path(assigns(:weatherbox))
  end

  test "should destroy weatherbox" do
    assert_difference('Weatherbox.count', -1) do
      delete :destroy, id: @weatherbox
    end

    assert_redirected_to weatherboxes_path
  end
end
