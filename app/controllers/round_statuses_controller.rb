class RoundStatusesController < ApplicationController
  before_action :set_round_status, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /round_statuses
  # GET /round_statuses.json
  def index
    @round_statuses = RoundStatus.all
  end

  # GET /round_statuses/1
  # GET /round_statuses/1.json
  def show
  end

  # GET /round_statuses/new
  def new
    @round_status = RoundStatus.new
  end

  # GET /round_statuses/1/edit
  def edit
  end

  # POST /round_statuses
  # POST /round_statuses.json
  def create
    @round_status = RoundStatus.new(round_status_params)

    respond_to do |format|
      if @round_status.save
        format.html { redirect_to root_path, notice: 'Round status was successfully created.' }
        format.json { render :show, status: :created, location: @round_status }
      else
        format.html { render :new }
        format.json { render json: @round_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /round_statuses/1
  # PATCH/PUT /round_statuses/1.json
  def update
    respond_to do |format|
      if @round_status.update(round_status_params)
        format.html { redirect_to @round_status, notice: 'Round status was successfully updated.' }
        format.json { render :show, status: :ok, location: @round_status }
      else
        format.html { render :edit }
        format.json { render json: @round_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /round_statuses/1
  # DELETE /round_statuses/1.json
  def destroy
    @round_status.destroy
    respond_to do |format|
      format.html { redirect_to round_statuses_url, notice: 'Round status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round_status
      @round_status = RoundStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_status_params
      params.require(:round_status).permit(:round_id, :bank_id, :cause_id)
    end
end
