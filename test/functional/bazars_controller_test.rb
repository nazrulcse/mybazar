require 'test_helper'

class BazarsControllerTest < ActionController::TestCase
  setup do
    @bazar = bazars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bazars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bazar" do
    assert_difference('Bazar.count') do
      post :create, bazar: { date: @bazar.date, description: @bazar.description, month: @bazar.month, total: @bazar.total, year: @bazar.year }
    end

    assert_redirected_to bazar_path(assigns(:bazar))
  end

  test "should show bazar" do
    get :show, id: @bazar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bazar
    assert_response :success
  end

  test "should update bazar" do
    put :update, id: @bazar, bazar: { date: @bazar.date, description: @bazar.description, month: @bazar.month, total: @bazar.total, year: @bazar.year }
    assert_redirected_to bazar_path(assigns(:bazar))
  end

  test "should destroy bazar" do
    assert_difference('Bazar.count', -1) do
      delete :destroy, id: @bazar
    end

    assert_redirected_to bazars_path
  end
end
