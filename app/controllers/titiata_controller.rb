class TitiataController < ApplicationController
  before_action :set_titiatum, only: %i[ show edit update destroy ]

  # GET /titiata or /titiata.json
  def index
    @titiata = Titiatum.all
  end

  # GET /titiata/1 or /titiata/1.json
  def show
  end

  # GET /titiata/new
  def new
    @titiatum = Titiatum.new
  end

  # GET /titiata/1/edit
  def edit
  end

  # POST /titiata or /titiata.json
  def create
    @titiatum = Titiatum.new(titiatum_params)

    respond_to do |format|
      if @titiatum.save
        format.html { redirect_to @titiatum, notice: "Titiatum was successfully created." }
        format.json { render :show, status: :created, location: @titiatum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @titiatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titiata/1 or /titiata/1.json
  def update
    respond_to do |format|
      if @titiatum.update(titiatum_params)
        format.html { redirect_to @titiatum, notice: "Titiatum was successfully updated." }
        format.json { render :show, status: :ok, location: @titiatum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @titiatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titiata/1 or /titiata/1.json
  def destroy
    @titiatum.destroy
    respond_to do |format|
      format.html { redirect_to titiata_url, notice: "Titiatum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titiatum
      @titiatum = Titiatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def titiatum_params
      params.require(:titiatum).permit(:titiatum)
    end
end
