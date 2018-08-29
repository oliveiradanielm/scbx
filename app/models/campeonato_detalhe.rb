class CampeonatoDetalhe < ApplicationRecord
  audited
  belongs_to :categoria
  belongs_to :etapa
  belongs_to :campeonato
  has_many :baterias
  validates_presence_of :categoria_id, :etapa_id, :campeonato
  validates_uniqueness_of :categoria_id, scope: [:etapa_id, :campeonato], message: 'já registrada para esta etapa.'

  def self.to_dropdown
    CampeonatoDetalhe.includes(:campeonato, :etapa, :categoria).collect{|a| [a.detalhes, a.id]}
  end

  def detalhes
    "#{self.campeonato.titulo} - #{self.etapa.descricao} - #{self.categoria.descricao}"
  end

  def inscritos
    Inscricao.includes(:atleta).where(etapa_id: self.etapa_id, categoria_id: self.categoria_id)
  end
end
