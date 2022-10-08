class ConcesionariaController < ApplicationController
  #before_action :set_concesionarium, only: %i[ show edit update destroy ]

  # GET /concesionaria
  def index
    @concesionaria = Concesionarium.all
  end
  # GET /concesionaria/new
  def new
    @concesionarium = Concesionarium.new
  end

  # POST /concesionaria 
  def create
    @concesionarium = Concesionarium.new(concesionarium_params)

    respond_to do |format|
      if @concesionarium.save
        format.html { redirect_to concesionaria_url, notice: "Concesionaria creada." }
        
      else
        format.html { render :new, status: :unprocessable_entity }
       
      end
    end
  end
  
  # DELETE /concesionaria/1 
  def destroy
    @concesionarium.destroy

    respond_to do |format|
      format.html { redirect_to concesionaria_url, notice: "Eliminada" }
     
    end
  end

  private
    # Utilice devoluciones de llamada para compartir configuraciones o restricciones comunes entre acciones.
    def set_concesionarium
      @concesionarium = Concesionarium.find(params[:id])
    end

    # Solo permita pasar una lista de parámetros de confianza.
    def concesionarium_params
      params.require(:concesionarium).permit(:nombre, :direccion, :telefono)
    end
end
