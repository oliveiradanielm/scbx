class Inscricao < ApplicationRecord
  belongs_to :atleta
  belongs_to :categoria
  belongs_to :etapa
end
