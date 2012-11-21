require 'test_helper'

class MenudeldiaControllerTest < ActionController::TestCase
  setup do
    @menudeldium = menudeldia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menudeldia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menudeldium" do
    assert_difference('Menudeldium.count') do
      post :create, menudeldium: { extras: @menudeldium.extras, fecha: @menudeldium.fecha, precio: @menudeldium.precio, primeros: @menudeldium.primeros, segundos: @menudeldium.segundos }
    end

    assert_redirected_to menudeldium_path(assigns(:menudeldium))
  end

  test "should show menudeldium" do
    get :show, id: @menudeldium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menudeldium
    assert_response :success
  end

  test "should update menudeldium" do
    put :update, id: @menudeldium, menudeldium: { extras: @menudeldium.extras, fecha: @menudeldium.fecha, precio: @menudeldium.precio, primeros: @menudeldium.primeros, segundos: @menudeldium.segundos }
    assert_redirected_to menudeldium_path(assigns(:menudeldium))
  end

  test "should destroy menudeldium" do
    assert_difference('Menudeldium.count', -1) do
      delete :destroy, id: @menudeldium
    end

    assert_redirected_to menudeldia_path
  end
end
