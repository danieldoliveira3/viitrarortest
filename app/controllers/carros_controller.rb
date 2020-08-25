class CarrosController < ApplicationController
  before_action :set_carro, only: [:show, :update, :destroy]

  # GET /carros
  def index
    @carros = Carro.all


    render json: @carros
  end

  # GET /carros/1
  def show
    render json: @carro
  end

  # POST /carros
  #- Serviço de inserção de novos carros
  def create
    @marca = Marca.find(params[:marca_id])
    @carro = @marca.carros.create(carro_params)
    #cria um carro que pertence a uma marca (definida pela rota marcas/:id/carros)

    if @carro.save
      render json: @carro, status: :created, location: @carro
    else
      render json: @carro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carros/1
  def update
    if @carro.update(carro_params)
      render json: @carro
    else
      render json: @carro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carros/1
  def destroy
    @carro.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carro
      @carro = Carro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def carro_params
      params.require(:carro).permit(:nome, :modelo, :preco, :user_id, :marca_id)
    end
end
