require 'test_helper'

class EvclientsControllerTest < ActionController::TestCase
  setup do
    @evclient = evclients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evclients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evclient" do
    assert_difference('Evclient.count') do
      post :create, evclient: @evclient.attributes
    end

    assert_redirected_to evclient_path(assigns(:evclient))
  end

  test "should show evclient" do
    get :show, id: @evclient.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evclient.to_param
    assert_response :success
  end

  test "should update evclient" do
    put :update, id: @evclient.to_param, evclient: @evclient.attributes
    assert_redirected_to evclient_path(assigns(:evclient))
  end

  test "should destroy evclient" do
    assert_difference('Evclient.count', -1) do
      delete :destroy, id: @evclient.to_param
    end

    assert_redirected_to evclients_path
  end
end
