require 'test_helper'

class SamsungsControllerTest < ActionController::TestCase
  setup do
    @samsung = samsungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samsungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create samsung" do
    assert_difference('Samsung.count') do
      post :create, samsung: { imei: @samsung.imei, response_email: @samsung.response_email, services: @samsung.services, text_alert: @samsung.text_alert, user_id: @samsung.user_id }
    end

    assert_redirected_to samsung_path(assigns(:samsung))
  end

  test "should show samsung" do
    get :show, id: @samsung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @samsung
    assert_response :success
  end

  test "should update samsung" do
    patch :update, id: @samsung, samsung: { imei: @samsung.imei, response_email: @samsung.response_email, services: @samsung.services, text_alert: @samsung.text_alert, user_id: @samsung.user_id }
    assert_redirected_to samsung_path(assigns(:samsung))
  end

  test "should destroy samsung" do
    assert_difference('Samsung.count', -1) do
      delete :destroy, id: @samsung
    end

    assert_redirected_to samsungs_path
  end
end
