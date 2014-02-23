require 'test_helper'

class HuwaeisControllerTest < ActionController::TestCase
  setup do
    @huwaei = huwaeis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:huwaeis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create huwaei" do
    assert_difference('Huwaei.count') do
      post :create, huwaei: { imei: @huwaei.imei, response_email: @huwaei.response_email, services: @huwaei.services, text_alert: @huwaei.text_alert, user_id: @huwaei.user_id }
    end

    assert_redirected_to huwaei_path(assigns(:huwaei))
  end

  test "should show huwaei" do
    get :show, id: @huwaei
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @huwaei
    assert_response :success
  end

  test "should update huwaei" do
    patch :update, id: @huwaei, huwaei: { imei: @huwaei.imei, response_email: @huwaei.response_email, services: @huwaei.services, text_alert: @huwaei.text_alert, user_id: @huwaei.user_id }
    assert_redirected_to huwaei_path(assigns(:huwaei))
  end

  test "should destroy huwaei" do
    assert_difference('Huwaei.count', -1) do
      delete :destroy, id: @huwaei
    end

    assert_redirected_to huwaeis_path
  end
end
