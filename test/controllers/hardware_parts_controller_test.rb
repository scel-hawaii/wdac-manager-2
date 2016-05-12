require 'test_helper'

class HardwarePartsControllerTest < ActionController::TestCase
  setup do
    @hardware_part = hardware_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hardware_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hardware_part" do
    assert_difference('HardwarePart.count') do
      post :create, hardware_part: { hardware_id: @hardware_part.hardware_id, part_id: @hardware_part.part_id }
    end

    assert_redirected_to hardware_part_path(assigns(:hardware_part))
  end

  test "should show hardware_part" do
    get :show, id: @hardware_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hardware_part
    assert_response :success
  end

  test "should update hardware_part" do
    patch :update, id: @hardware_part, hardware_part: { hardware_id: @hardware_part.hardware_id, part_id: @hardware_part.part_id }
    assert_redirected_to hardware_part_path(assigns(:hardware_part))
  end

  test "should destroy hardware_part" do
    assert_difference('HardwarePart.count', -1) do
      delete :destroy, id: @hardware_part
    end

    assert_redirected_to hardware_parts_path
  end
end
