require 'test_helper'

class MastersControllerTest < ActionController::TestCase
  setup do
    @master = masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create master" do
    assert_difference('Master.count') do
      post :create, master: { email: @master.email, password: 'secret', password_confirmation: 'secret', privatekey: @master.privatekey, publickey: @master.publickey, username: @master.username }
    end

    assert_redirected_to master_path(assigns(:master))
  end

  test "should show master" do
    get :show, id: @master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @master
    assert_response :success
  end

  test "should update master" do
    patch :update, id: @master, master: { email: @master.email, password: 'secret', password_confirmation: 'secret', privatekey: @master.privatekey, publickey: @master.publickey, username: @master.username }
    assert_redirected_to master_path(assigns(:master))
  end

  test "should destroy master" do
    assert_difference('Master.count', -1) do
      delete :destroy, id: @master
    end

    assert_redirected_to masters_path
  end
end
