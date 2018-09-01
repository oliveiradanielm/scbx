module BateriaDetalhesHelper
  def raias_1
    (1..8).to_a.reverse
  end
  def raias_2
    [2, 6, 3, 1, 8, 5, 7, 4]
  end
  def raias_3
    [3, 1, 5, 7, 2, 6, 4, 8]
  end
  def raias_rand
    raias_1.shuffle
  end
end
