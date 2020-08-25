class MarcasController < ApplicationController
  before_action :set_marca, only: [:show, :update, :destroy]

  # GET /marcas

  #Serviço de busca por todas as marcas função index gerada pelo scaffold
  #mostra todas as marcas

  def index
    @marcas = Marca.all
  
    render json: @marcas
  end


  
  #GET marcas/:marca_id/carros
  #- Serviço de busca de carros de uma determinada marca
  def carros_por_marca
    @carros = Marca.find(params[:marca_id]).carros
    #na linha acima eu uso o parametro :marca_id 
    #não usei a função set_marca porque nesse caso eu preciso do :marca_id
    #pois a rota é marcas/:marcas_id/carros. o rails entende que o :id
    #é o proximo parametro que a rota vai receber, por exemplo marcas/:marcas_id/carros/:id 
    #nesse caso o parametro :id é do carro
    
    render json: @carros
  end

  # GET /marcas/1
  def show
    render json: @marca
  end

  # POST /marcas
  #- Serviço de inserção de novas marcas
  def create
    @marca = Marca.new(marca_params)
    @marca.carros = []
    @marca.criado_em = Time.now

    if @marca.save
      render json: @marca, status: :created, location: @marca
    else
      render json: @marca.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /marcas/1
  def update
    if @marca.update(marca_params)
      render json: @marca
    else
      render json: @marca.errors, status: :unprocessable_entity
    end
  end

  # DELETE /marcas/1
  def destroy
    @marca.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca
      @marca = Marca.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def marca_params
      params.require(:marca).permit(:nome, :criado_em, :carros, :user_id)
    end
end
