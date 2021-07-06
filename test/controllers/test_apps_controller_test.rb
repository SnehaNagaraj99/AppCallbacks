require 'test_helper'

class TestAppsControllerTest < ActionController::TestCase
  setup do
    @test_app = test_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_app" do
    assert_difference('TestApp.count') do
      post :create, test_app: {  }
    end

    assert_redirected_to test_app_path(assigns(:test_app))
  end

  test "should show test_app" do
    get :show, id: @test_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_app
    assert_response :success
  end

  test "should update test_app" do
    patch :update, id: @test_app, test_app: {  }
    assert_redirected_to test_app_path(assigns(:test_app))
  end

  test "should destroy test_app" do
    assert_difference('TestApp.count', -1) do
      delete :destroy, id: @test_app
    end

    assert_redirected_to test_apps_path
  end
end
