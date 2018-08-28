class Categoria < ApplicationRecord
  audited
  belongs_to :tipo_categoria
  validates_presence_of :idade_minima, :idade_maxima, :descricao
  validates_uniqueness_of :descricao
  has_many :campeonato_detalhes

  def self.to_dropdown
    Categoria.order(:idade_minima).collect{|a| [a.descricao, a.id]}
  end
end