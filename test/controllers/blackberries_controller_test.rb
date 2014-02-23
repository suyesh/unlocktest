require 'test_helper'

class BlackberriesControllerTest < ActionController::TestCase
  setup do
    @blackberry = blackberries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blackberries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blackberry" do
    assert_difference('Blackberry.count') do
      post :create, blackberry: { imei: @blackberry.imei, response_email: @blackberry.response_email, services: @blackberry.services, text_alert: @blackberry.text_alert, user_id: @blackberry.user_id }
    end

    assert_redirected_to blackberry_path(assigns(:blackberry))
  end

  test "should show blackberry" do
    get :show, id: @blackberry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blackberry
    assert_response :success
  end

  test "should update blackberry" do
    patch :update, id: @blackberry, blackberry: { imei: @blackberry.imei, response_email: @blackberry.response_email, services: @blackberry.services, text_alert: @blackberry.text_alert, user_id: @blackberry.user_id }
    assert_redirected_to blackberry_path(assigns(:blackberry))
  end

  test "should destroy blackberry" do
    assert_difference('Blackberry.count', -1) do
      delete :destroy, id: @blackberry
    end

    assert_redirected_to blackberries_path
  end
end
