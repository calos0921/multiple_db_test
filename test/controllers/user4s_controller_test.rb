require 'test_helper'

class User4sControllerTest < ActionController::TestCase
  setup do
    @user4 = user4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user4" do
    assert_difference('User4.count') do
      post :create, user4: { email: @user4.email, name: @user4.name, tel: @user4.tel }
    end

    assert_redirected_to user4_path(assigns(:user4))
  end

  test "should show user4" do
    get :show, id: @user4
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user4
    assert_response :success
  end

  test "should update user4" do
    patch :update, id: @user4, user4: { email: @user4.email, name: @user4.name, tel: @user4.tel }
    assert_redirected_to user4_path(assigns(:user4))
  end

  test "should destroy user4" do
    assert_difference('User4.count', -1) do
      delete :destroy, id: @user4
    end

    assert_redirected_to user4s_path
  end
end
