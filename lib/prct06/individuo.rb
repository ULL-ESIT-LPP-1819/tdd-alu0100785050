class Individuo 
	attr_accessor :edad, :nombre, :apellidos, :sexo, :peso
	
	def initialize(edad,nombre,apellidos,sexo,peso)
		@edad = edad
		@nombre = nombre
		@apellidos = apellidos
		@sexo = sexo
		@peso = peso
	end

	def to_s
		"Edad: #{@edad} -- Nombre: #{@nombre} -- Apellidos: #{@apellidos} -- Sexo: #{@sexo} -- Peso: #{@peso}"
	end
end
