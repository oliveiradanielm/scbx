class Bateria < ApplicationRecord
  belongs_to :tipo_bateria
  belongs_to :campeonato_detalhe
  has_many :bateria_detalhes, inverse_of: :bateria, dependent: :destroy
  validates_presence_of :numero, :tipo_bateria_id, :campeonato_detalhe_id
  validates_uniqueness_of :numero, scope: :campeonato_detalhe_id, message: 'já existente para esta etapa'
  accepts_nested_attributes_for :bateria_detalhes, allow_destroy: true

  def ordem

  end
end
