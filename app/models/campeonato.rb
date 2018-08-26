class Campeonato < ApplicationRecord
  audited
  has_many :etapas
  validates_presence_of :titulo
  validates_uniqueness_of :titulo

  def self.to_dropdown
    Campeonato.order(:titulo).collect{|a| [a.titulo, a.id]}
  end
end
