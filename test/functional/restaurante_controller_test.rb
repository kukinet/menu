require 'test_helper'

class RestauranteControllerTest < ActionController::TestCase
  test "should get nombre:string" do
    get :nombre:string
    assert_response :success
  end

  test "should get descripcion:text" do
    get :descripcion:text
    assert_response :success
  end

  test "should get foto:string" do
    get :foto:string
    assert_response :success
  end

  test "should get web:string" do
    get :web:string
    assert_response :success
  end

  test "should get telefono:string" do
    get :telefono:string
    assert_response :success
  end

  test "should get direccion:string" do
    get :direccion:string
    assert_response :success
  end

  test "should get latitud:float" do
    get :latitud:float
    assert_response :success
  end

  test "should get longitud:float" do
    get :longitud:float
    assert_response :success
  end

end
