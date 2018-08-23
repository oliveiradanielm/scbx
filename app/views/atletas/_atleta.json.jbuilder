json.extract! atleta, :id, :nome, :nacionalidade, :naturalidade, :data_nascimento, :sexo, :cpf, :rg, :email, :passaporte, :validade_passaporte, :tipo_sanguineo_id, :licenca_cbc, :codigo_uci, :nome_mae, :nome_pai, :logradouro, :numero, :complemento, :bairro, :cep, :cidade, :uf, :telefone_residencial, :telefone_celular, :created_at, :updated_at
json.url atleta_url(atleta, format: :json)
