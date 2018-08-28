module BateriaDetalhesHelper
  def raias_1
    (1..8).to_a
  end
  def raias_2
    raias_1.reverse
  end
  def raias_3
    [4,3,2,1,8,7,6,5]
  end
end
