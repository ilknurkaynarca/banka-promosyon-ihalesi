class BankOffersController < ApplicationController
  before_action :set_bank_offer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /bank_offers
  # GET /bank_offers.json
  def index
    @bank_offers = BankOffer.all
  end

  # GET /bank_offers/1
  # GET /bank_offers/1.json
  def show
  end

  # GET /bank_offers/new
  def new
    @bank_offer = BankOffer.new
  end

  # GET /bank_offers/1/edit
  def edit
  end

  # POST /bank_offers
  # POST /bank_offers.json
  def create
    @bank_offer = BankOffer.new(bank_offer_params)

    respond_to do |format|
      if @bank_offer.save
        format.html { redirect_to root_path, notice: 'Bank offer was successfully created.' }
        format.json { render :show, status: :created, location: @bank_offer }
      else
        format.html { render :new }
        format.json { render json: @bank_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_offers/1
  # PATCH/PUT /bank_offers/1.json
  def update
    respond_to do |format|
      if @bank_offer.update(bank_offer_params)
        format.html { redirect_to @bank_offer, notice: 'Bank offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @bank_offer }
      else
        format.html { render :edit }
        format.json { render json: @bank_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_offers/1
  # DELETE /bank_offers/1.json
  def destroy
    @bank_offer.destroy
    respond_to do |format|
      format.html { redirect_to bank_offers_url, notice: 'Bank offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_offer
      @bank_offer = BankOffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bank_offer_params
      params.require(:bank_offer).permit(:round_id, :bank_id, :price)
    end
end
