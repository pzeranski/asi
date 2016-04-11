require 'test_helper'

class SamochodsControllerTest < ActionController::TestCase
  setup do
    @samochod = samochods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samochods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create samochod" do
    assert_difference('Samochod.count') do
      post :create, samochod: { marka: @samochod.marka, model: @samochod.model }
    end

    assert_redirected_to samochod_path(assigns(:samochod))
  end

  test "should show samochod" do
    get :show, id: @samochod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @samochod
    assert_response :success
  end

  test "should update samochod" do
    patch :update, id: @samochod, samochod: { marka: @samochod.marka, model: @samochod.model }
    assert_redirected_to samochod_path(assigns(:samochod))
  end

  test "should destroy samochod" do
    assert_difference('Samochod.count', -1) do
      delete :destroy, id: @samochod
    end

    assert_redirected_to samochods_path
  end
end
