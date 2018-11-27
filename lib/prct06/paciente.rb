# @author Miriam Rodríguez Méndez
# Clase hija de individuo que representa datos de un paciente
class Paciente < Individuo
	
	include Comparable

	# Permite acceder a las variables
	attr_accessor :edad, :sexo, :peso, :talla, :circun_cintu, :circun_cadera

	def initialize (nombre, apellidos, edad, sexo, peso, talla, circun_cintu, circun_cadera)
		super(edad,nombre,apellidos,sexo,peso)
		@talla = talla
		@circun_cintu = circun_cintu
		@circun_cadera = circun_cadera
	end

	# Calcula el IMC teniendo en cuenta el peso y la altura
	#
	# @return [float] Valor del IMC
	def imc
		num = (@peso/(@talla*@talla)).round(2)
		if num < 18.5
			num #- Bajo peso"
		elsif num > 18.5 and num < 24.9
			num #- Adecuado"
		elsif num > 25.0 and num < 29.9
			num  #- Sobrepeso"
		elsif num > 30.0 and num < 34.9
			num #Obesidad grado 1"
		elsif num > 35.0 and num < 39.9
			num #- Obesidad grado 2"
		elsif num > 40
			num #- Obesidad grado 2"
		end			
	end

	# Calcula la cantidad de grasa
	#
	# @return [float] Valor de la grasa
	def grasa
		1.2*imc+0.23*@edad-10.8*@sexo-5.4
	end

	# Calcula la relación cintura cadera
	#
	# @return [float] Valor de RCC dependiendo del sexo
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

	# Calcula el tamaño del pliegue tricipital
	#
	# @return [float] Valor del pliegue tricipital
	def tricipital
		media = 0.0
		pliegue = [254,667,335]

		3.times do |i|
			media += pliegue[i]
		end

		media /= 3
		"(#{media.round(2)})"
		
	end

	# Calcula el tamaño del pliegue bicipital
	#
	# @return [float] Valor del pliegue bicipital
	def bicipital
		media2 = 0.0
		pliegue2 = [158,332,200]

		3.times do |i|
			media2 += pliegue2[i]
		end

		media2 /= 3
		"(#{media2.round(2)})"
	end

	# Calcula el tamaño del pliegue subescapular
	#
	# @return [float] Valor del pliegue subescapular
	def subescapular
		media3 = 0.0
		pliegue3 = [866,541,263]

		3.times do |i|
			media3 += pliegue3[i]
		end

		media3 /= 3
		"(#{media3.round(2)})"
	end

	# Calcula el tamaño del pliegue suprailiaco
	#
	# @return [float] Valor del pliegue suprailiaco
	def suprailiaco
		media4 = 0.0
		pliegue4 = [45,89,220]

		3.times do |i|
			media4 += pliegue4[i]
		end

		media4 /= 3
		"(#{media4.round(2)})"
	end

	# Convierte los valores en un string
	def to_s
		super().to_s +
		" -- Talla: #{@talla} -- Circunferencia Cintura: #{@circun_cintu} -- Circunferencia Cadera: #{@circun_cadera}"
	end

	# Método para poder usar Comparable
	#
	# @param aux [Paciente] Objeto de tipo paciente
	# @return [bool] -1 menor,0 igual, 1 mayor
	def <=>(aux)
		self.imc <=> aux.imc
	end
end
