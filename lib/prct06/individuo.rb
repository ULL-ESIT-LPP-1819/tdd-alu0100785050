class Individuo 
	attr_accessor :nombre, :apellidos, :sexo, :peso
	
	def initialize(nombre,apellidos,sexo,peso)
		@nombre = nombre
		@apellidos = apellidos
		@sexo = sexo
		@peso = peso
	end

	def to_s
		"Nombre: #{@nombre} -- Apellidos: #{@apellidos} -- Sexo: #{@sexo} -- Peso: #{@peso}"
	end
end
