class Etapa < ApplicationRecord
  audited
  validates_presence_of :descricao, :data, :cidade, :uf
  validates_uniqueness_of :descricao, scope: :campeonato_id, message: 'já existente para este campeonato.'
  belongs_to :campeonato
  has_many :campeonato_detalhes

  def self.to_dropdown
    Etapa.includes(:campeonato).order(:data).collect{|a| [a.completo, a.id]}
  end

  def completo
    "#{self.campeonato.titulo}-#{self.descricao}"
  end
end
