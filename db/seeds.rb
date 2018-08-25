%w(A+ B+ O+ AB+ A- B- O- AB-).each{|s| TipoSanguineo.create(descricao: s)}
%w(Challenger Expert).each{|c| TipoCategoria.create(descricao: c)}