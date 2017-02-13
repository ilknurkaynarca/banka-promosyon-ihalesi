require 'test_helper'

class RoundStatusesControllerTest < ActionController::TestCase
  setup do
    @round_status = round_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:round_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create round_status" do
    assert_difference('RoundStatus.count') do
      post :create, round_status: { bank_id: @round_status.bank_id, cause_id: @round_status.cause_id, round_id: @round_status.round_id }
    end

    assert_redirected_to round_status_path(assigns(:round_status))
  end

  test "should show round_status" do
    get :show, id: @round_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @round_status
    assert_response :success
  end

  test "should update round_status" do
    patch :update, id: @round_status, round_status: { bank_id: @round_status.bank_id, cause_id: @round_status.cause_id, round_id: @round_status.round_id }
    assert_redirected_to round_status_path(assigns(:round_status))
  end

  test "should destroy round_status" do
    assert_difference('RoundStatus.count', -1) do
      delete :destroy, id: @round_status
    end

    assert_redirected_to round_statuses_path
  end
end
