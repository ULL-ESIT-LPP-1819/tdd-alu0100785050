class Etiqueta
	attr_accessor :alimento, :grasas, :saturadas, :mono, :poli, :hidratos, :azucares, 
			:polial, :almidon, :fibra, :proteinas, :sal, :vitaminas

	def initialize(alimento, grasas, saturadas, mono, poli, hidratos, azucares, 
		       polial, almidon, fibra, proteinas, sal, vitaminas)
		
		@alimento = alimento
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

	def valorEnergetico
		kj = ((grasas.to_f * 37) + (saturadas.to_f * 37) + (mono.to_f * 37) + (poli.to_f * 37) + (hidratos.to_f * 17) + (azucares.to_f * 17) + (polial.to_f * 10) + (almidon.to_f * 17) + (fibra.to_f * 8) + (proteinas.to_f * 17) + (sal.to_f * 25)).round(2)
		kcal = ((grasas.to_f * 9) + (saturadas.to_f * 9) + (mono.to_f * 9) + (poli.to_f * 9) + (hidratos.to_f * 4) + (azucares.to_f * 4) + (polial.to_f * 2.4) + (almidon.to_f * 4) + (fibra.to_f * 2) + (proteinas.to_f * 4) + (sal.to_f * 6))
		
		(kj/kcal).round(2)
	end
end 
