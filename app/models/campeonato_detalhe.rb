class CampeonatoDetalhe < ApplicationRecord
  audited
  belongs_to :categoria
  belongs_to :etapa
  belongs_to :campeonato
  has_many :baterias, inverse_of: :campeonato_detalhe, dependent: :destroy
  validates_presence_of :categoria_id, :etapa_id, :campeonato
  validates_uniqueness_of :categoria_id, scope: [:etapa_id, :campeonato], message: 'já registrada para esta etapa.'

  def self.to_dropdown
    CampeonatoDetalhe.includes(:campeonato, :etapa, :categoria).collect{|a| [a.detalhes, a.id]}
  end

  def detalhes
    c = CampeonatoDetalhe.includes(:campeonato, :etapa, :categoria).where(id: self.id).first
    "#{c.campeonato.titulo} - #{c.etapa.descricao} - #{c.categoria.descricao}"
  end

  def inscritos
    Inscricao.includes(:atleta).where(etapa_id: self.etapa_id, categoria_id: self.categoria_id).order('atletas.nome')
  end

  def inscritos_nova_fase
    inscritos = []
    self.baterias.collect do |b|
      b.bateria_detalhes.where(classificado: true).each do |d|
        inscritos << d.inscricao
      end
    end
    inscritos
  end

end
