class Inscricao < ApplicationRecord
  audited
  acts_as_paranoid
  belongs_to :atleta
  belongs_to :categoria
  belongs_to :etapa
  validates_presence_of :atleta_id, :categoria_id, :etapa_id, :placa
  validates_uniqueness_of :atleta_id, scope: [:categoria_id, :etapa_id], message: 'já inscrito nesta categoria.'
  after_commit :gravar_detalhes

  def inscritos(etapa_id, categoria_id)
    where(etapa_id: etapa_id, categoria_id: categoria_id)
  end

  def nome_placa
    "#{self.atleta.nome} - #{self.placa}"
  end

  def gravar_detalhes
    detalhes = CampeonatoDetalhe.new
    detalhes.campeonato = self.etapa.campeonato
    detalhes.etapa = self.etapa
    detalhes.categoria = self.categoria
    detalhes.save
  end
end
