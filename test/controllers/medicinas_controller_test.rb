require 'test_helper'

class MedicinasControllerTest < ActionController::TestCase
  setup do
    @medicina = medicinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicina" do
    assert_difference('Medicina.count') do
      post :create, medicina: { my_file: @medicina.my_file }
    end

    assert_redirected_to medicina_path(assigns(:medicina))
  end

  test "should show medicina" do
    get :show, id: @medicina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicina
    assert_response :success
  end

  test "should update medicina" do
    patch :update, id: @medicina, medicina: { my_file: @medicina.my_file }
    assert_redirected_to medicina_path(assigns(:medicina))
  end

  test "should destroy medicina" do
    assert_difference('Medicina.count', -1) do
      delete :destroy, id: @medicina
    end

    assert_redirected_to medicinas_path
  end
end
