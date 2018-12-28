class Menu
	attr_accessor :dia, :nombre, :ingesta, :descripcion

	def initialize(dia,&block)
		@dia = dia
		@ingesta = []
		@descripcion = []

		if block_given?
		  if block.arity == 1
		    yield self
		  else
		    instance_eval(&block)
		  end
		end
	end

	def to_s
		output = @nombre
		output << "\n#{'=' * @nombre.size}\n\n"
		output << "Composición nutricional\n"
	end

#	def titulo(nom)
#		nombr = nom
#		nombr << ""
#
#		@nombre << nombr
#	end

	def ingesta(ing, options = {})
		ingest = ing
		ingest << "(#{options[:min]})" if options[:min]
		ingest << "(#{options[:max]})" if options[:max]

		@ingesta << ingest
	end

	def desayuno(descr, options = {})
		alimento = descr
		alimento << "(#{options[:descripcion]})" if options[:descripcion]
		alimento << "(#{options[:porcion]})" if options[:porcion]
		alimento << "(#{options[:gramos]})" if options[:gramos]
		alimento << "(#{options[:grasas]})" if options[:grasas]
		alimento << "(#{options[:carbohidratos]})" if options[:carbohidratos]
		alimento << "(#{options[:proteinas]})" if options[:proteinas]
		alimento << "(#{options[:fibra]})" if options[:fibra]
		alimento << "(#{options[:sal]})" if options[:sal]

		@descripcion << alimento
	end

	def almuerzo(descr, options = {})
                alimento = descr
                alimento << "(#{options[:descripcion]})" if options[:descripcion]
                alimento << "(#{options[:porcion]})" if options[:porcion]
                alimento << "(#{options[:gramos]})" if options[:gramos]
                alimento << "(#{options[:grasas]})" if options[:grasas]
                alimento << "(#{options[:carbohidratos]})" if options[:carbohidratos]
                alimento << "(#{options[:proteinas]})" if options[:proteinas]
                alimento << "(#{options[:fibra]})" if options[:fibra]
                alimento << "(#{options[:sal]})" if options[:sal]

                @descripcion << alimento
        end

	def cena(descr, options = {})
                alimento = descr
                alimento << "(#{options[:descripcion]})" if options[:descripcion]
                alimento << "(#{options[:porcion]})" if options[:porcion]
                alimento << "(#{options[:gramos]})" if options[:gramos]
                alimento << "(#{options[:grasas]})" if options[:grasas]
                alimento << "(#{options[:carbohidratos]})" if options[:carbohidratos]
                alimento << "(#{options[:proteinas]})" if options[:proteinas]
                alimento << "(#{options[:fibra]})" if options[:fibra]
                alimento << "(#{options[:sal]})" if options[:sal]

                @descripcion << alimento
        end
end
