class Atleta < ApplicationRecord
  audited
  acts_as_paranoid

  validates_presence_of :nome, :cpf, :data_nascimento, :sexo
  validates_uniqueness_of :cpf
  belongs_to :tipo_sanguineo, required: false

  def sexo_desc
    self.sexo == 1 ? 'Masculino' : (self.sexo == 2) ? 'Feminino' : nil if self.sexo
  end

  def self.to_dropdown
    Atleta.order(:nome).collect{|a| [a.nome, a.id]}
  end
end
