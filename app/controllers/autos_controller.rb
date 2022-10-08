class AutosController < ApplicationController
  before_action :set_auto, only: %i[ show edit update destroy ]

  # GET /autos or /autos.json
  def index
    @autos = Auto.all
  end

  # GET /autos/1 
  def show
  end

  # GET /autos/new
  def new
    @auto = Auto.new
  end

  # POST /autos
  def create
    @auto = Auto.new(auto_params)

    respond_to do |format|
      if @auto.save
        format.html { redirect_to auto_url, notice: "Auto agregado." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /autos/1 or /autos/1.json
  def destroy
    @auto.destroy

    respond_to do |format|
      format.html { redirect_to autos_url, notice: "Auto eliminado" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto
      @auto = Auto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auto_params
      params.require(:auto).permit(:marca, :modelo, :año, :tipo, :precio, :estado)
    end
end
