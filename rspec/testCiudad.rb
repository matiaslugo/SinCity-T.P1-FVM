require 'rspec'
require_relative '../model/Parcela.rb'
require_relative '../model/Ciudad.rb'

describe 'Tests de Ciudad' do
  it 'Nueva Ciudad' do
    ciudad= Ciudad.new

  expect(ciudad.parcelas).to eq([])
  end

  it 'Ciudad con parcelas' do
    ciudad = Ciudad.new
    parcela = Parcela.new(500,ciudad,0,0)
    parcela1 = Parcela.new(800,ciudad,0,1)
    ciudad.agregarParcela(parcela)
    ciudad.agregarParcela(parcela1)

  expect(ciudad.parcelas.include?(parcela))
  expect(ciudad.parcelas.include?(parcela1))

  end

  it 'Parcelas con parcelas vecinas' do
    ciudad = Ciudad.new
    parcela = Parcela.new(500,ciudad,0,0)
    parcela1 = Parcela.new(800,ciudad,0,1)
    parcela2 = Parcela.new(500,ciudad,0,2)
    parcela3 = Parcela.new(800,ciudad,1,0)
    parcela4 = Parcela.new(500,ciudad,1,1)
    parcela5 = Parcela.new(800,ciudad,1,2)
    parcela6 = Parcela.new(500,ciudad,2,0)
    parcela7 = Parcela.new(800,ciudad,2,1)
    parcela8 = Parcela.new(800,ciudad,2,2)

    ciudad.agregarParcela(parcela)
    ciudad.agregarParcela(parcela1)
    ciudad.agregarParcela(parcela2)
    ciudad.agregarParcela(parcela3)
    ciudad.agregarParcela(parcela4)
    ciudad.agregarParcela(parcela5)
    ciudad.agregarParcela(parcela6)
    ciudad.agregarParcela(parcela7)
    ciudad.agregarParcela(parcela8)
        'Vecinas de parcela4'
  expect(ciudad.vecinasDe(parcela4)).to include(parcela)
  expect(ciudad.vecinasDe(parcela4)).to include(parcela1)
  expect(ciudad.vecinasDe(parcela4)).to include(parcela2)
  expect(ciudad.vecinasDe(parcela4)).to include(parcela3)
  expect(ciudad.vecinasDe(parcela4)).to include(parcela5)
  expect(ciudad.vecinasDe(parcela4)).to include(parcela6)
  expect(ciudad.vecinasDe(parcela4)).to include(parcela7)
  expect(ciudad.vecinasDe(parcela4)).to include(parcela8)
         'Vecinas de parcela'
  expect(ciudad.vecinasDe(parcela)).to include(parcela1)
  expect(ciudad.vecinasDe(parcela)).to include(parcela3)
  expect(ciudad.vecinasDe(parcela)).to include(parcela4)

  end


end
