class BinnaclesController < ApplicationController
  before_action :set_binnacle, only: [:show, :edit, :update, :destroy]

  # GET /binnacles
  # GET /binnacles.json
  def index
    @binnacles = Binnacle.all
  end

  # GET /binnacles/1
  # GET /binnacles/1.json
  def show
  end

  # GET /binnacles/new
  def new
    @binnacle = Binnacle.new
  end

  # GET /binnacles/1/edit
  def edit
  end

  # POST /binnacles
  # POST /binnacles.json
  def create
    @binnacle = Binnacle.new(binnacle_params)

    respond_to do |format|
      if @binnacle.save
        format.html { redirect_to @binnacle, notice: 'Binnacle was successfully created.' }
        format.json { render :show, status: :created, location: @binnacle }
      else
        format.html { render :new }
        format.json { render json: @binnacle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /binnacles/1
  # PATCH/PUT /binnacles/1.json
  def update
    respond_to do |format|
      if @binnacle.update(binnacle_params)
        format.html { redirect_to @binnacle, notice: 'Binnacle was successfully updated.' }
        format.json { render :show, status: :ok, location: @binnacle }
      else
        format.html { render :edit }
        format.json { render json: @binnacle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /binnacles/1
  # DELETE /binnacles/1.json
  def destroy
    @binnacle.destroy
    respond_to do |format|
      format.html { redirect_to binnacles_url, notice: 'Binnacle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_binnacle
      @binnacle = Binnacle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def binnacle_params
      params.require(:binnacle).permit(:user_id, :farming_id, :fecha, :temperatura, :nroriegos, :observaciones, :foto1, :foto2, :foto3)
    end
end
