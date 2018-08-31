%w(A+ B+ O+ AB+ A- B- O- AB-).each{|s| TipoSanguineo.create(descricao: s)}
%w(Challenger Championship Promocionais).each{|c| TipoCategoria.create(descricao: c)}
# CATEGORIAS CHALLENGER
Categoria.create(descricao: 'Boys 5/6', idade_minima: 5, idade_maxima: 6, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 7', idade_minima: 7, idade_maxima: 7, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 8', idade_minima: 8, idade_maxima: 8, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 9', idade_minima: 9, idade_maxima: 9, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 10', idade_minima: 10, idade_maxima: 10, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 11', idade_minima: 11, idade_maxima: 11, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 12', idade_minima: 12, idade_maxima: 12, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 13', idade_minima: 13, idade_maxima: 13, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 14', idade_minima: 14, idade_maxima: 14, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 15', idade_minima: 15, idade_maxima: 15, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Boys 16', idade_minima: 16, idade_maxima: 16, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Men 17/24', idade_minima: 17, idade_maxima: 24, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Men 25/29', idade_minima: 25, idade_maxima: 29, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Men 30/39', idade_minima: 30, idade_maxima: 29, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Men 40+', idade_minima: 40, idade_maxima: 99, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Girls 5/8', idade_minima: 5, idade_maxima: 8, genero: 2, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Girls 9/10', idade_minima: 9, idade_maxima: 10, genero: 2, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Girls 11/12', idade_minima: 11, idade_maxima: 12, genero: 2, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Girls 13/14', idade_minima: 13, idade_maxima: 14, genero: 2, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Girls 15/16', idade_minima: 15, idade_maxima: 16, genero: 2, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Women 17+', idade_minima: 17, idade_maxima: 99, genero: 2, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Cruiser 15/16', idade_minima: 15, idade_maxima: 16, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Cruiser 17/24', idade_minima: 17, idade_maxima: 24, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Cruiser 25/29', idade_minima: 25, idade_maxima: 29, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Cruiser 30/34', idade_minima: 30, idade_maxima: 34, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Cruiser 35/39', idade_minima: 35, idade_maxima: 39, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Cruiser 40/44', idade_minima: 40, idade_maxima: 44, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Cruiser 45/49', idade_minima: 45, idade_maxima: 49, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Cruiser 50+', idade_minima: 50, idade_maxima: 99, genero: 1, tipo_categoria_id: 1, oficial: true)
Categoria.create(descricao: 'Men 30+', idade_minima: 30, idade_maxima: 99, genero: 1, tipo_categoria_id: 1, oficial: true)
# CATEGORIAS Championship
Categoria.create(descricao: 'Junior Men', idade_minima: 17, idade_maxima: 18, genero: 1, tipo_categoria_id: 2, oficial: true)
Categoria.create(descricao: 'Elite Men', idade_minima: 19, idade_maxima: 99, genero: 1, tipo_categoria_id: 2, oficial: true)
Categoria.create(descricao: 'Junior Women', idade_minima: 17, idade_maxima: 18, genero: 2, tipo_categoria_id: 2, oficial: true)
Categoria.create(descricao: 'Elite Women', idade_minima: 19, idade_maxima: 99, genero: 1, tipo_categoria_id: 2, oficial: true)
# CATEGORIAS PROMOCIONAIS
Categoria.create(descricao: 'Balance Bike (até 4 anos)', idade_minima: 1, idade_maxima: 4, genero: 1, tipo_categoria_id: 3, oficial: false)
Categoria.create(descricao: 'MTB Open (Aro 26”)', idade_minima: 1, idade_maxima: 99, genero: 1, tipo_categoria_id: 3, oficial: false)
Categoria.create(descricao: 'BMX Especial', idade_minima: 1, idade_maxima: 99, genero: 1, tipo_categoria_id: 3, oficial: false)

150.times{ Atleta.create(nome: Faker::GameOfThrones.character, cpf: Faker::Number.number(11), data_nascimento: Faker::Date.birthday(18, 65), email: Faker::Internet.email, sexo: 1, uf: 'CE', cidade: 'Fortaleza')}
Campeonato.create(titulo: 'Copa Brasil', descricao: 'Centro Olímpico de Fortaleza - Ceará')
Etapa.create(descricao: '#3 Etapa', data: '02/09/2018', cidade: 'Fortaleza', uf: 'CE', campeonato_id: Campeonato.first.id)
100.times{ Inscricao.create(atleta_id: Faker::Number.between(1, 150), categoria_id: Faker::Number.between(1, 20), etapa_id: Etapa.first.id, confirmado: false, placa: Faker::Number.between(1, 800))}

%w(Classificatória Oitavas Quartas Semi-Final Final).each{|c| TipoBateria.create(descricao: c)}
