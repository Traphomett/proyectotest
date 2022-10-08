class ProductsController < ApplicationController
    def index
        @carros = Carro.all
    end 

    def show
        @carro = Carro.find(params[:id])
    end

    def new
        @carro = Carro.new

    end

    def create
        @carro = Carro.new(products_params)

        if  @carro.save
            redirect_to products_path
        else
            render :new
        end
    end
    def destroy
      @carro = Carro.find(params[:id])
      @carro.destroy
      
      redirect_to products_path, notice: 'Se ha eliminado', status: :see_other
    end


    def products_params
        params.require(:carro).permit(:marca, :modelo, :año, :tipo, :precio, :estado)
    end
end