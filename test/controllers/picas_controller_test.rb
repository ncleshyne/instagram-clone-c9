require 'test_helper'

class PicasControllerTest < ActionController::TestCase
  setup do
    @pica = picas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pica" do
    assert_difference('Pica.count') do
      post :create, pica: { description: @pica.description, name: @pica.name, picture: @pica.picture }
    end

    assert_redirected_to pica_path(assigns(:pica))
  end

  test "should show pica" do
    get :show, id: @pica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pica
    assert_response :success
  end

  test "should update pica" do
    patch :update, id: @pica, pica: { description: @pica.description, name: @pica.name, picture: @pica.picture }
    assert_redirected_to pica_path(assigns(:pica))
  end

  test "should destroy pica" do
    assert_difference('Pica.count', -1) do
      delete :destroy, id: @pica
    end

    assert_redirected_to picas_path
  end
end
