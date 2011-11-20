require 'test_helper'

class PotzsControllerTest < ActionController::TestCase
  setup do
    @potz = potzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create potz" do
    assert_difference('Potz.count') do
      post :create, potz: @potz.attributes
    end

    assert_redirected_to potz_path(assigns(:potz))
  end

  test "should show potz" do
    get :show, id: @potz.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @potz.to_param
    assert_response :success
  end

  test "should update potz" do
    put :update, id: @potz.to_param, potz: @potz.attributes
    assert_redirected_to potz_path(assigns(:potz))
  end

  test "should destroy potz" do
    assert_difference('Potz.count', -1) do
      delete :destroy, id: @potz.to_param
    end

    assert_redirected_to potzs_path
  end
end
