# @author Miriam Rodríguez Méndez
# Esta clase representa la etiqueta nutricional de un alimento
class Etiqueta

	include Comparable
	
	#Permite la lectura y acceso de estas variables
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

	#Calcula el valor energético en KJ
	def valorEnergeticoKJ
		kj = ((grasas.to_f * 37) + (saturadas.to_f * 37) + (mono.to_f * 37) + (poli.to_f * 37) + (hidratos.to_f * 17) + (azucares.to_f * 17) + (polial.to_f * 10) + (almidon.to_f * 17) + (fibra.to_f * 8) + (proteinas.to_f * 17) + (sal.to_f * 25)).round(2)
		
		kj.round(2)
	end

	#Calcula el valor energético en Kcal
	def valorEnergeticoKcal
		kcal = ((grasas.to_f * 9) + (saturadas.to_f * 9) + (mono.to_f * 9) + (poli.to_f * 9) + (hidratos.to_f * 4) + (azucares.to_f * 4) + (polial.to_f * 2.4) + (almidon.to_f * 4) + (fibra.to_f * 2) + (proteinas.to_f * 4) + (sal.to_f * 6))
		
		kcal.round(2)
	end

	#Calcula el IR de la grasa a partir de una etiqueta
	def grasaIR
		((valorEnergeticoKJ.to_f*70)/8400).round(2)
	end

	#Calcula el IR de las grasas saturadas
	def saturadasIR
		((valorEnergeticoKJ.to_f*20)/8400).round(2)
	end

	#Calcula el IR de los hidratos
	def hidratosIR
		((valorEnergeticoKJ.to_f*260)/8400).round(2)
	end

	#Calcula el IR de los azucares
	def azucaresIR
		((valorEnergeticoKJ.to_f*90)/8400).round(2)
	end

	#Calcula el IR de la cantidad de proteinas
	def proteinasIR
		((valorEnergeticoKJ.to_f*50)/8400).round(2)
	end

	#Calcula el IR de los gramos de sal
	def salIR
		((valorEnergeticoKJ.to_f*6)/8400).round(2)
	end

	#Calcula el IR de las vitaminas
	def vitaminasIR
		((valorEnergeticoKJ.to_f*260)/8400).round(2)
	end

	#Calcula el valor energético por porción KJ	
	def valorEKJporcion
		((valorEnergeticoKJ.to_f*25)/100).round(2)
	end

	#Calcula el valor energético por porción en Kcal
	def valorEKcalporcion
                ((valorEnergeticoKcal.to_f*25)/100).round(2)
        end

	#Calcula las grasas por porción
	def grasasporcion
                ((grasas.to_f*25)/100).round(2)
        end

	#Calcula las grasas saturadas por porción
	def saturadasporcion
		((saturadas.to_f*25)/100).round(2)
	end

	#Calcula las grasas monoinsaturadas por porción
	def monoporcion
		((mono.to_f*25)/100).round(2)
        end

	#Calcula las grasas polinsaturadas por porción
	def poliporcion
		((poli.to_f*25)/100).round(2)
	end

	#Calcula los hidratos por porción
	def hidratosporcion
		((hidratos.to_f*25)/100).round(2)
	end

	#Calcula los azúcares por porción
	def azucaresporcion
		((azucares.to_f*25)/100).round(2)
	end

	#Calcula los polialcoholes por porción
	def polialcoholporcion
		((polial.to_f*25)/100).round(2)
	end
	
	#Calcula el almidón por porción
	def almidonporcion
		((almidon.to_f*25)/100).round(2)
	end

	#Calcula la fibra por porción
	def fibrasporcion
		((fibra.to_f*25)/100).round(2)
	end
	
	#Calcula las proteinas por porción
	def proteinasporcion
		((proteinas.to_f*25)/100).round(2)
	end

	#Calcula la sal por porción
	def salporcion
		((sal.to_f*25)/100).round(2)
	end

	#Calcula las vitaminas por porción
	def vitaminasporcion
		((vitaminas.to_f*25)/100).round(2)
	end

	#Calcula el IR de las grasas por porción
	def grasasIRporcion
		((grasaIR.to_f*25)/100).round(2)
	end

	#Calcula el IR de las saturadas por porción
	def saturadasIRporcion
		((saturadasIR.to_f*25)/100).round(2)
	end

	#Calcula el IR de los hidratos por porción
	def hidratosIRporcion
		((hidratosIR.to_f*25)/100).round(2)
	end

	#Calcula el IR de los azúcares por porción
	def azucaresIRporcion
		((azucaresIR.to_f*25)/100).round(2)
	end

	#Calcula el IR de las proteinas por porción
	def proteinasIRporcion
		((proteinasIR.to_f*25)/100).round(2)
	end

	#Calcula el IR de la sal por porción
	def salIRporcion
		((salIR.to_f*25)/100).round(2)
	end

	#Calcula el IR de las vitamincas en porción
	def vitaminasIRporcion
		((vitaminasIR.to_f*25)/100).round(2)
	end

	#Método para transformar en string las dos primeras columnas
	def to_s2col
		"Por 100 g o 100 ml de producto | IR (por 100 g o 100 ml de producto) |\n " +
                "Valor energético (kj/kcal) | " +  
                "#{valorEnergeticoKJ}/#{valorEnergeticoKcal} | #{valorEnergeticoKJ}% |\n" +
                "Grasas de las cuales: | #{grasas} | #{grasaIR}%\n" +
                "Saturadas | #{saturadas} | #{saturadasIR} |\n" +
                "Monoinsaturadas | #{mono} | - |\n" +
                "Poliinsaturadas | #{poli} | - |\n" + 
                "Hidratos de carbono de los cuales: #{hidratos} | #{hidratosIR} |\n" +
                "Azucares | #{azucares} | #{azucaresIR}\n" +
                "Polialcoholes | #{polial} | - |\n" +
                "Almidón | #{almidon} | - |\n" +
                "Fibra alimentaria | #{fibra} | - |\n" + 
                "Proteinas | #{proteinas} | #{proteinasIR} |\n" +
                "Sal | #{sal} | #{salIR} |\n" +
                "Vitaminas/mineral | #{vitaminas} |\n"
	end

	#Método para transformar los datos en string
	def to_sentera
		"Por 100 g o 100 ml de producto | IR (por 100 g o 100 ml de producto) | " +
                "Por porción de 25 g | IR (por porción de 25 g de producto) |\n" +
                " Valor energético (kj/kcal) | " +
                "#{valorEnergeticoKJ}/#{valorEnergeticoKcal} | #{valorEnergeticoKJ}% |" +
                " #{valorEKJporcion} | #{valorEKcalporcion}\n" +
                "Grasas de las cuales: | #{grasas} | #{grasaIR}% | #{grasasporcion} | " +
                "#{grasasIRporcion}\n" +
                "Saturadas | #{saturadas} | #{saturadasIR}% | #{saturadasporcion} | " + 
                "#{saturadasIRporcion}\n" +
                "Monoinsaturadas | #{mono} | - | #{monoporcion} | - |\n" +
                "Poliinsaturadas | #{poli} | - | #{poliporcion} | - |\n" +
                "Hidratos de carbono de los cuales: #{hidratos} | #{hidratosIR} | " +
                "#{hidratosporcion} | #{hidratosIRporcion} |\n" +
                "Azucares | #{azucares} | #{azucaresIR} | #{azucaresporcion} | #{azucaresIRporcion} |" +
                "Polialcoholes | #{polial} | - | #{polialcoholporcion} | - |\n" +
                "Almidón | #{almidon} | - | #{almidonporcion} | - |\n" +
                "Fibra alimentaria | #{fibra} | - | #{fibrasporcion} | - |\n" +
                "Proteinas | #{proteinas} | #{proteinasIR} | #{proteinasporcion} | " +
                "#{proteinasIRporcion} |\n" +
                "Sal | #{sal} | #{salIR} | #{salporcion} | #{salIRporcion} |\n" +
                "Vitaminas/mineral | #{vitaminas} | #{vitaminasIR} | #{vitaminasporcion} | " +
                "#{vitaminasIRporcion} |"
	end

	# Operador <=> para el modulo Comparable
	#
	# @param aux [Etiqueta] Objeto de tipo etiqueta
	# @return [bool] -1 menor, 0 igual, 1 mayor
	def <=>(aux)
		return self.valorEnergeticoKJ <=> aux.valorEnergeticoKJ
	end
end 
