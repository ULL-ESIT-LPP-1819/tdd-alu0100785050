# @author Miriam Rodríguez Méndez
# Esta clase representa un individuo
class Individuo 

	# Permite el acceso a las variables
	attr_accessor :edad, :nombre, :apellidos, :sexo, :peso
	
	def initialize(edad,nombre,apellidos,sexo,peso)
		@edad = edad
		@nombre = nombre
		@apellidos = apellidos
		@sexo = sexo
		@peso = peso
	end

	# Formatea los datos en un string
	def to_s
		"Edad: #{@edad} -- Nombre: #{@nombre} -- Apellidos: #{@apellidos} -- Sexo: #{@sexo} -- Peso: #{@peso}"
	end
end
