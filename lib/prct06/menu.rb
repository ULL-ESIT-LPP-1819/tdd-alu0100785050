class Menu
	attr_accessor :dia, :nombre, :ingesta, :descripcion

	def initialize(dia,&block)
		@dia = dia
		@ingesta = []
		@desayuno = []
		@cena = []
		@almuerzo = []

		if block_given?
		  if block.arity == 1
		    yield self
		  else
		    instance_eval(&block)
		  end
		end
	end

	def to_s
		vet = 0
		output = @dia
		output << "                          Composición Nutricional\n"
		output << "===========================================================\n"
		output << "                          grasas  carbohidratos  proteínas  fibra  sal  valor energético\n"
		output << "Desayuno\n"
		@desayuno.each do |alimento|
			vet += valor_energetico(alimento)
			output << "*#{alimento[:descripcion]}*      "
			output << "#{alimento[:grasas]}        "
			output << "#{alimento[:carbohidratos]}        "
			output << "#{alimento[:proteinas]}        "
			output << "#{alimento[:fibra]}     "
			output << "#{alimento[:sal]}	"
			output << "#{valor_energetico(alimento)}    \n"
			 
		end

		output << "\nAlmuerzo\n"
		@almuerzo.each do |alimento|
			vet += valor_energetico(alimento)
			output << "*#{alimento[:descripcion]}*            "
                        output << "#{alimento[:grasas]}          "
                        output << "#{alimento[:carbohidratos]}        "
                        output << "#{alimento[:proteinas]}        "
                        output << "#{alimento[:fibra]}        "
                        output << "#{alimento[:sal]}        "
			output << "#{valor_energetico(alimento)}   \n"

		end
		
		output << "\nCena\n"
		@cena.each do |alimento|
			vet += valor_energetico(alimento)
                        output << "*#{alimento[:descripcion]}*  "
                        output << "#{alimento[:grasas]}      "
                        output << "#{alimento[:carbohidratos]}     "
                        output << "#{alimento[:proteinas]}       "
                        output << "#{alimento[:fibra]}      "
                        output << "#{alimento[:sal]}      "
			output << "#{valor_energetico(alimento)}   \n"

                end

		output << "Valor energético total   "
		output << "#{vet}"


		output
	end

	def valor_energetico(comida)
		kcal = comida[:grasas] * 0.9
		kcal += comida[:carbohidratos] * 0.4
		kcal += comida[:proteinas] * 0.4
		  kcal.round(2)
	end

	def titulo(nom)
		nombr = nom
	end

	def ingesta(ing, options = {})
		ingest = ing
		ingest << "(#{options[:min]})" if options[:min]
		ingest << "(#{options[:max]})" if options[:max]

		@ingesta << ingest
	end

	def desayuno(des, options = {})
		bf = des
		bf << "(#{options[:descripcion]})" if options[:descripcion]
		bf << "(#{options[:porcion]})" if options[:porcion]
		bf << "(#{options[:gramos]})" if options[:gramos]
		bf << "(#{options[:grasas]})" if options[:grasas]
		bf << "(#{options[:carbohidratos]})" if options[:carbohidratos]
		bf << "(#{options[:proteinas]})" if options[:proteinas]
		bf << "(#{options[:fibra]})" if options[:fibra]
		bf << "(#{options[:sal]})" if options[:sal]

		@desayuno << bf
	end

	def almuerzo(al, options = {})
                lunch = al
                lunch << "(#{options[:descripcion]})" if options[:descripcion]
                lunch << "(#{options[:porcion]})" if options[:porcion]
                lunch << "(#{options[:gramos]})" if options[:gramos]
                lunch << "(#{options[:grasas]})" if options[:grasas]
                lunch << "(#{options[:carbohidratos]})" if options[:carbohidratos]
                lunch << "(#{options[:proteinas]})" if options[:proteinas]
                lunch << "(#{options[:fibra]})" if options[:fibra]
                lunch << "(#{options[:sal]})" if options[:sal]

                @almuerzo << lunch
        end

	def cena(ce, options = {})
                din = ce 
                din << "(#{options[:descripcion]})" if options[:descripcion]
                din << "(#{options[:porcion]})" if options[:porcion]
                din << "(#{options[:gramos]})" if options[:gramos]
                din << "(#{options[:grasas]})" if options[:grasas]
                din << "(#{options[:carbohidratos]})" if options[:carbohidratos]
                din << "(#{options[:proteinas]})" if options[:proteinas]
                din << "(#{options[:fibra]})" if options[:fibra]
                din << "(#{options[:sal]})" if options[:sal]

                @cena << din
        end
end
