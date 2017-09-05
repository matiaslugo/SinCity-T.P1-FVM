class Ambiental

	attr_accessor :nubosidad, :viento, :temperatura, :estacion

	def initialize(nubosidad,viento,temperatura,estacion)
		@nubosidad   = nubosidad
		@viento      = viento
		@temperatura = temperatura
		@estacion    = estacion
	end

	def tipoDeNubosidad
		if @nubosidad == 1
			return "Completamente nublado"
		else
			return "Sin nubes"
		end
		
	end

	def tipoDeViento
		if @viento < 15 
			return "Bajo"
		else 
			if @viento <= 35
				return "Moderado"
			else 
				return "Alto"
			end 
		end
	end

	def temperatura

		return @temperatura

	end 

	def estacion

		return @estacion

	end
	
end 