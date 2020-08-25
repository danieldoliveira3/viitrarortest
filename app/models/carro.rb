# - Criar modelo de carros com seguintes atributos:
#     - Nome
#     - Modelo
#     - Preço
class Carro
  include Mongoid::Document
  validates :nome, :modelo, :preco, presence: true

  field :nome, type: String
  field :modelo, type: String
  field :preco, type: Float
  belongs_to :marca
end
