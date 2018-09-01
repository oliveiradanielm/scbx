class Atleta < ApplicationRecord
  audited
  acts_as_paranoid

  validates_presence_of :nome
  # validates_uniqueness_of :cpf
  belongs_to :tipo_sanguineo, required: false
  has_many :inscricoes, dependent: :destroy

  accepts_nested_attributes_for :inscricoes, reject_if: proc { |attributes| attributes['categoria_id'].blank? }, allow_destroy: true

  def sexo_desc
    self.sexo == 1 ? 'Masculino' : (self.sexo == 2) ? 'Feminino' : nil if self.sexo
  end

  def self.to_dropdown
    Atleta.order(:nome).collect{|a| [a.nome, a.id]}
  end
end
