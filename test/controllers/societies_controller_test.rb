require 'test_helper'

class SocietiesControllerTest < ActionController::TestCase
  setup do
    @society = societies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:societies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create society" do
    assert_difference('Society.count') do
      post :create, society: { descripcion: @society.descripcion, nombre: @society.nombre, val_anual: @society.val_anual, val_mensual: @society.val_mensual, val_semestral: @society.val_semestral }
    end

    assert_redirected_to society_path(assigns(:society))
  end

  test "should show society" do
    get :show, id: @society
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @society
    assert_response :success
  end

  test "should update society" do
    patch :update, id: @society, society: { descripcion: @society.descripcion, nombre: @society.nombre, val_anual: @society.val_anual, val_mensual: @society.val_mensual, val_semestral: @society.val_semestral }
    assert_redirected_to society_path(assigns(:society))
  end

  test "should destroy society" do
    assert_difference('Society.count', -1) do
      delete :destroy, id: @society
    end

    assert_redirected_to societies_path
  end
end
