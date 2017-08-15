class FarmingsController < ApplicationController
  before_action :set_farming, only: [:show, :edit, :update, :destroy]

  # GET /farmings
  # GET /farmings.json
  def index
    @farmings = Farming.all
  end

  # GET /farmings/1
  # GET /farmings/1.json
  def show
  end

  # GET /farmings/new
  def new
    @farming = Farming.new
  end

  # GET /farmings/1/edit
  def edit
  end

  # POST /farmings
  # POST /farmings.json
  def create
    @farming = Farming.new(farming_params)

    respond_to do |format|
      if @farming.save
        format.html { redirect_to @farming, notice: 'Farming was successfully created.' }
        format.json { render :show, status: :created, location: @farming }
      else
        format.html { render :new }
        format.json { render json: @farming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farmings/1
  # PATCH/PUT /farmings/1.json
  def update
    respond_to do |format|
      if @farming.update(farming_params)
        format.html { redirect_to @farming, notice: 'Farming was successfully updated.' }
        format.json { render :show, status: :ok, location: @farming }
      else
        format.html { render :edit }
        format.json { render json: @farming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmings/1
  # DELETE /farmings/1.json
  def destroy
    @farming.destroy
    respond_to do |format|
      format.html { redirect_to farmings_url, notice: 'Farming was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farming
      @farming = Farming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farming_params
      params.require(:farming).permit(:user_id, :semilla, :recomendaciones)
    end
end
