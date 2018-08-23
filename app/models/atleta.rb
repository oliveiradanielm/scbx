class Atleta < ApplicationRecord
  audited
  acts_as_paranoid

  validates_presence_of :nome, :cpf, :data_nascimento
  validates_uniqueness_of :cpf
end
