class TipoCategoria < ApplicationRecord
  audited
  validates_presence_of :descricao
  def self.to_dropdown
    TipoCategoria.collect{|a| [a.descricao, a.id]}
  end
end
