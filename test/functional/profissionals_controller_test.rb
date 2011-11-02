require 'test_helper'

class ProfissionalsControllerTest < ActionController::TestCase
  setup do
    @profissional = profissionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profissionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profissional" do
    assert_difference('Profissional.count') do
      post :create, profissional: @profissional.attributes
    end

    assert_redirected_to profissional_path(assigns(:profissional))
  end

  test "should show profissional" do
    get :show, id: @profissional.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profissional.to_param
    assert_response :success
  end

  test "should update profissional" do
    put :update, id: @profissional.to_param, profissional: @profissional.attributes
    assert_redirected_to profissional_path(assigns(:profissional))
  end

  test "should destroy profissional" do
    assert_difference('Profissional.count', -1) do
      delete :destroy, id: @profissional.to_param
    end

    assert_redirected_to profissionals_path
  end
end
