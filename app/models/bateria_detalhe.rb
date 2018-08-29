class BateriaDetalhe < ApplicationRecord
  belongs_to :bateria, inverse_of: :bateria_detalhes
  belongs_to :inscricao, inverse_of: :bateria_detalhes
  validates_presence_of :inscricao
  validates_uniqueness_of :inscricao_id, scope: :bateria_id, message: 'já está nessa bateria.'

end
