class Paciente < Individuo
	attr_accessor :edad, :sexo, :peso, :talla, :circun_cintu, :circun_cadera

	def initialize (nombre, apellidos, edad, sexo, peso, talla, circun_cintu, circun_cadera)
		super(edad,nombre,apellidos,sexo,peso)
		@talla = talla
		@circun_cintu = circun_cintu
		@circun_cadera = circun_cadera
	end

	def imc
		num = (@peso/(@talla*@talla)).round(2)
		if num < 18.5
			"(#{num})" #- Bajo peso"
		elsif num > 18.5 and num < 24.9
			"(#{num})" #- Adecuado"
		elsif num > 25.0 and num < 29.9
			"(#{num})"  #- Sobrepeso"
		elsif num > 30.0 and num < 34.9
			"(#{num})" #Obesidad grado 1"
		elsif num > 35.0 and num < 39.9
			"(#{num})" #- Obesidad grado 2"
		elsif num > 40
			"(#{num})" #- Obesidad grado 2"
		end			
	end

	def grasa
		1.2*imc+0.23*@edad-10.8*@sexo-5.4
	end

	def rcc
		number = (@circun_cintu.to_f/@circun_cadera.to_f).round(2)
		if @sexo == 0
			if number > 0.72 and number < 0.75
				"(#{number})" #- riesgo bajo"
			elsif number > 0.75 and number < 0.82
				"(#{number})" #- riesgo moderado"
			elsif number > 0.82
				"(#{number})" #- riesgo alto"
			end
		elsif @sexo == 1
			if number > 0.83 and number < 0.88
				"(#{number})" #- riesgo bajo"
			elsif number > 0.88 and number < 0.95
				"(#{number})" #- riesgo moderado"
			elsif number > 0.95 and number < 1.01
				"(#{number})" #- riesgo alto"
			elsif number > 1.01
				"(#{number})" #- riesgo muy alto"
			end
		end
					
	end

	def tricipital
		media = 0.0
		pliegue = [254,667,335]

		3.times do |i|
			media += pliegue[i]
		end

		media /= 3
		"(#{media.round(2)})"
		
	end

	def bicipital
		media2 = 0.0
		pliegue2 = [158,332,200]

		3.times do |i|
			media2 += pliegue2[i]
		end

		media2 /= 3
		"(#{media2.round(2)})"
	end

	def subescapular
		media3 = 0.0
		pliegue3 = [866,541,263]

		3.times do |i|
			media3 += pliegue3[i]
		end

		media3 /= 3
		"(#{media3.round(2)})"
	end

	def suprailiaco
		media4 = 0.0
		pliegue4 = [45,89,220]

		3.times do |i|
			media4 += pliegue4[i]
		end

		media4 /= 3
		"(#{media4.round(2)})"
	end

	def to_s
		super().to_s +
		" -- Talla: #{@talla} -- Circunferencia Cintura: #{@circun_cintu} -- Circunferencia Cadera: #{@circun_cadera}"
	end
end
