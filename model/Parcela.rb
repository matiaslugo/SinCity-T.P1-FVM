class Parcela
  attr_accessor :alturaAlNivelDelMar,:ciudad,:x,:y
  @x
  @y
  @alturaAlNivelDelMar
  @ciudad

  def initialize(altura,ciudad,coord1,coord2)
    self.alturaAlNivelDelMar = altura
    self.ciudad = ciudad
    self.x = coord1
    self.y = coord2
  end

 def vecinas()
    @ciudad.vecinasDe(self)
 end

 def esVecinaDe(otraParcela)
      distanciaA(otraParcela) <= Math.sqrt(2)
 end

 def distanciaA(otraParcela)
       Math.sqrt((self.x - otraParcela.x) ** 2 + (self.y - otraParcela.y) ** 2)
  end

end
