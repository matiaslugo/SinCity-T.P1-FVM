class Ciudad
 attr_accessor :parcelas
  @parcelas

  def initialize()
    @parcelas = Array.new
  end

  def vecinasDe(parcela)
    @parcelas.select { | c | c.esVecinaDe(parcela) }
  end

 def agregarParcela(parcela)
    @parcelas << parcela
 end
end
