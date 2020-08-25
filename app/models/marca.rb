# - Criar modelo de marca de carros com os seguintes atributos:
#     - Nome
#     - Data de criação
#     - Carros
class Marca
  include Mongoid::Document
  validates :nome, presence: true
  field :nome, type: String
  field :criado_em, type: Date
  field :carros, type: String
  has_many :carros, dependent: :destroy
end
