require 'rspec'
require_relative '../model/Parcela.rb'
require_relative '../model/Ciudad.rb'


describe  'Tests de Parcela' do
  it 'nueva parcela' do
    ciudad = Ciudad.new
    parcela= Parcela.new(100,ciudad,0,0)

  expect(parcela.alturaAlNivelDelMar).to eq(100)
  end

  it 'Sin Parcelas Vecinas' do
    ciudad1 = Ciudad.new
    parcela= Parcela.new(100,ciudad1,0,0)

  expect(parcela.vecinas()).to eq([])
  end

  it 'Parcelas Vecinas' do
    ciudad1 = Ciudad.new
    parcela= Parcela.new(100,ciudad1,0,0)
    parcela1 = Parcela.new(1000,ciudad1,0,1)
    parcela2 = Parcela.new(2000,ciudad1,0,2)
    ciudad1.agregarParcela(parcela)
    ciudad1.agregarParcela(parcela1)
    ciudad1.agregarParcela(parcela2)

  expect(parcela1.vecinas()).to include(parcela,parcela2)

  end

end
