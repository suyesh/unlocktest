require 'test_helper'

class AlcatelsControllerTest < ActionController::TestCase
  setup do
    @alcatel = alcatels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alcatels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alcatel" do
    assert_difference('Alcatel.count') do
      post :create, alcatel: { imei: @alcatel.imei, response_email: @alcatel.response_email, services: @alcatel.services, text_alert: @alcatel.text_alert, user_id: @alcatel.user_id }
    end

    assert_redirected_to alcatel_path(assigns(:alcatel))
  end

  test "should show alcatel" do
    get :show, id: @alcatel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alcatel
    assert_response :success
  end

  test "should update alcatel" do
    patch :update, id: @alcatel, alcatel: { imei: @alcatel.imei, response_email: @alcatel.response_email, services: @alcatel.services, text_alert: @alcatel.text_alert, user_id: @alcatel.user_id }
    assert_redirected_to alcatel_path(assigns(:alcatel))
  end

  test "should destroy alcatel" do
    assert_difference('Alcatel.count', -1) do
      delete :destroy, id: @alcatel
    end

    assert_redirected_to alcatels_path
  end
end
