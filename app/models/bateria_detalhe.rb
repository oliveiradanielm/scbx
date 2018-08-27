class BateriaDetalhe < ApplicationRecord
  belongs_to :bateria
  belongs_to :inscricao
  validates_presence_of :inscricao_id
  validates_uniqueness_of :inscricao_id, scope: :bateria_id, message: 'já está nessa bateria.'

  def raias

  end
end
