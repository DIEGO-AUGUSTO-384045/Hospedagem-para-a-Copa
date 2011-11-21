require 'test_helper'

class ImovelsControllerTest < ActionController::TestCase
  setup do
    @imovel = imovels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imovels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imovel" do
    assert_difference('Imovel.count') do
      post :create, imovel: @imovel.attributes
    end

    assert_redirected_to imovel_path(assigns(:imovel))
  end

  test "should show imovel" do
    get :show, id: @imovel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imovel.to_param
    assert_response :success
  end

  test "should update imovel" do
    put :update, id: @imovel.to_param, imovel: @imovel.attributes
    assert_redirected_to imovel_path(assigns(:imovel))
  end

  test "should destroy imovel" do
    assert_difference('Imovel.count', -1) do
      delete :destroy, id: @imovel.to_param
    end

    assert_redirected_to imovels_path
  end
end
