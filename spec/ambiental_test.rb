require 'rspec'
require_relative '../Ambiental'

describe 'Tests de la clase Ambiental' do 

	context 'La temperatura es de 15' do 
      
    it 'La temperatura es de 15 grados' do 
      ambiental = Ambiental.new(1,10,15, 'Primavera')

      expect(ambiental.temperatura).to eq 15 

    end

    it 'El ambiente se encuentra nublado' do 
      ambiental = Ambiental.new(1,10,15, 'Primavera')

      expect(ambiental.tipoDeNubosidad).to eq "Completamente nublado"

  	end

    it "El ambiente se encuentra con viento y el mismo es 'Moderado'" do
      ambiental = Ambiental.new(1,20,15, 'Primavera')

      expect(ambiental.tipoDeViento).to eq "Moderado"

    end

    it "El ambiente se encuentra en la estacion 'Primavera'" do
      ambiental = Ambiental.new(1,20,15, 'Primavera')

      expect(ambiental.estacion).to eq 'Primavera'

    end

  end 

end