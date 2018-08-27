class TipoSanguineo < ApplicationRecord
  audited
  validates_presence_of :descricao
  def self.to_dropdown
    TipoBateria.collect{|a| [a.descricao, a.id]}
  end
end
