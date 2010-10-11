require 'test_helper'

class CheckUpdatesControllerTest < ActionController::TestCase
  setup do
    @check_update = check_updates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:check_updates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check_update" do
    assert_difference('CheckUpdate.count') do
      post :create, :check_update => @check_update.attributes
    end

    assert_redirected_to check_update_path(assigns(:check_update))
  end

  test "should show check_update" do
    get :show, :id => @check_update.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @check_update.to_param
    assert_response :success
  end

  test "should update check_update" do
    put :update, :id => @check_update.to_param, :check_update => @check_update.attributes
    assert_redirected_to check_update_path(assigns(:check_update))
  end

  test "should destroy check_update" do
    assert_difference('CheckUpdate.count', -1) do
      delete :destroy, :id => @check_update.to_param
    end

    assert_redirected_to check_updates_path
  end
end
