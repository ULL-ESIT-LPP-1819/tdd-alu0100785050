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

	def valorEnergeticoKJ
		kj = ((grasas.to_f * 37) + (saturadas.to_f * 37) + (mono.to_f * 37) + (poli.to_f * 37) + (hidratos.to_f * 17) + (azucares.to_f * 17) + (polial.to_f * 10) + (almidon.to_f * 17) + (fibra.to_f * 8) + (proteinas.to_f * 17) + (sal.to_f * 25)).round(2)
		
		kj.round(2)
	end

	def valorEnergeticoKcal
		kcal = ((grasas.to_f * 9) + (saturadas.to_f * 9) + (mono.to_f * 9) + (poli.to_f * 9) + (hidratos.to_f * 4) + (azucares.to_f * 4) + (polial.to_f * 2.4) + (almidon.to_f * 4) + (fibra.to_f * 2) + (proteinas.to_f * 4) + (sal.to_f * 6))
		
		kcal.round(2)
	end

	def grasaIR
		((valorEnergeticoKJ.to_f*70)/8400).round(2)
	end

	def saturadasIR
		((valorEnergeticoKJ.to_f*20)/8400).round(2)
	end

	def hidratosIR
		((valorEnergeticoKJ.to_f*260)/8400).round(2)
	end

	def azucaresIR
		((valorEnergeticoKJ.to_f*90)/8400).round(2)
	end

	def proteinasIR
		((valorEnergeticoKJ.to_f*50)/8400).round(2)
	end

	def salIR
		((valorEnergeticoKJ.to_f*6)/8400).round(2)
	end


	def valorEKJporcion
		((valorEnergeticoKJ.to_f*25)/100).round(2)
	end
	
	def valorEKcalporcion
                ((valorEnergeticoKcal.to_f*25)/100).round(2)
        end

	def grasasporcion
                ((grasas.to_f*25)/100).round(2)
        end

	def saturadasporcion
		((saturadas.to_f*25)/100).round(2)
	end

	def monoporcion
		((mono.to_f*25)/100).round(2)
        end

	def poliporcion
		((poli.to_f*25)/100).round(2)
	end

	def hidratosporcion
		((hidratos.to_f*25)/100).round(2)
	end

	def azucaresporcion
		((azucares.to_f*25)/100).round(2)
	end

	def polialcoholporcion
		((polial.to_f*25)/100).round(2)
	end
	
	def almidonporcion
		((almidon.to_f*25)/100).round(2)
	end

	def fibrasporcion
		((fibra.to_f*25)/100).round(2)
	end
	
	def proteinasporcion
		((proteinas.to_f*25)/100).round(2)
	end

	def salporcion
		((sal.to_f*25)/100).round(2)
	end
end 
