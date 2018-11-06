class Etiqueta
	attr_accessor :etiqueta, :grasas, :saturadas, :mono, :poli, :hidratos, :azucares, 
			:polial, :almidon, :fibra, :proteinas, :sal, :vitaminas

	def initialize(etiqueta, grasas, saturadas, mono, poli, hidratos, azucares, 
		       polial, almidon, fibra, proteinas, sal, vitaminas)
		
		@etiqueta = etiqueta
		@grasas = grasas
		@saturadas = saturadas
		@mono = mono
		@poli = poli
		@hidratos = hidratos
		@azucares = azucares
		@polial = polial
		@almidon = almidon
		@fibra = fibra
		@proteinas = proteinas
		@sal = sal
		@vitaminas = vitaminas
	end
end
