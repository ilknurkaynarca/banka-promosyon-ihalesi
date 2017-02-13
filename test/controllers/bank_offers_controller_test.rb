require 'test_helper'

class BankOffersControllerTest < ActionController::TestCase
  setup do
    @bank_offer = bank_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bank_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bank_offer" do
    assert_difference('BankOffer.count') do
      post :create, bank_offer: { bank_id: @bank_offer.bank_id, price: @bank_offer.price, round_id: @bank_offer.round_id }
    end

    assert_redirected_to bank_offer_path(assigns(:bank_offer))
  end

  test "should show bank_offer" do
    get :show, id: @bank_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bank_offer
    assert_response :success
  end

  test "should update bank_offer" do
    patch :update, id: @bank_offer, bank_offer: { bank_id: @bank_offer.bank_id, price: @bank_offer.price, round_id: @bank_offer.round_id }
    assert_redirected_to bank_offer_path(assigns(:bank_offer))
  end

  test "should destroy bank_offer" do
    assert_difference('BankOffer.count', -1) do
      delete :destroy, id: @bank_offer
    end

    assert_redirected_to bank_offers_path
  end
end
