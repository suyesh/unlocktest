require 'test_helper'

class LgsControllerTest < ActionController::TestCase
  setup do
    @lg = lgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lg" do
    assert_difference('Lg.count') do
      post :create, lg: { imei: @lg.imei, response_email: @lg.response_email, services: @lg.services, text_alert: @lg.text_alert, user_id: @lg.user_id }
    end

    assert_redirected_to lg_path(assigns(:lg))
  end

  test "should show lg" do
    get :show, id: @lg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lg
    assert_response :success
  end

  test "should update lg" do
    patch :update, id: @lg, lg: { imei: @lg.imei, response_email: @lg.response_email, services: @lg.services, text_alert: @lg.text_alert, user_id: @lg.user_id }
    assert_redirected_to lg_path(assigns(:lg))
  end

  test "should destroy lg" do
    assert_difference('Lg.count', -1) do
      delete :destroy, id: @lg
    end

    assert_redirected_to lgs_path
  end
end
