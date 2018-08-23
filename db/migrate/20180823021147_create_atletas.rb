class CreateAtletas < ActiveRecord::Migration[5.2]
  def change
    create_table :atletas do |t|
      t.string :nome
      t.string :nacionalidade
      t.string :naturalidade
      t.date :data_nascimento
      t.integer :sexo
      t.string :cpf
      t.string :rg
      t.string :email
      t.string :passaporte
      t.date :validade_passaporte
      t.integer :tipo_sanguineo_id
      t.string :licenca_cbc
      t.string :codigo_uci
      t.string :nome_mae
      t.string :nome_pai
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :uf
      t.string :telefone_residencial
      t.string :telefone_celular

      t.timestamps
    end
  end
end
