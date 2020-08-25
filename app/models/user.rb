#- Criar modelo para usuários
class User
  include Mongoid::Document
  validates :nome, :occupation, presence: true
  field :nome, type: String
  field :occupation, type: String
  field :carros, type: String
  field :marcas, type: String
  field :favoritos, type: String
  
end
