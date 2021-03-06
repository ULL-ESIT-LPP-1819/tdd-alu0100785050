require 'benchmark'

RSpec.describe Prct06 do

  before :each do
	 @et1 = Etiqueta.new("Bacon",69.30,28.21,27.05,7.19,0.00,0.00,0.00,0.00,0.00,14.6,0.6,10.14)
	 @et2 = Etiqueta.new("Pan",4.70,1.00,1.40,1.31,47.50,0.00,0.00,0.00,4.10,7.54,1.1,27.00)
  	 @et3 = Etiqueta.new("Tofu",40.78,0.69,1.06,2.70,3.30,0.00,0.00,0.00,0.30,8.08,3.80,20.00)
	 @et4 = Etiqueta.new("Chocolate",23.4,20.00,17.5,40.00,0.00,0.00,0.00,0.00,5.00,3.20,0.00,23.21)
	 @et5 = Etiqueta.new("Naranjas",0.12,0.015,0.023,0.025,11.57,9.35,0.00,0.00,2.4,0.94,0.01,10.25)

	 @paciente1 = Paciente.new("Lucas","Perez",45,1,85,1.78,70,95,0.12)
         @paciente2 = Paciente.new("Kevin","Garcia",19,1,75,1.80,80,90,0.27)
         @paciente3 = Paciente.new("Pepe","Lopez",25,1,100,1.67,95,92,0.54)
         @paciente4 = Paciente.new("Maria","Suarez",30,0,86,1.48,75,80,0.0)
         @paciente5 = Paciente.new("Lola","Ginebra",12,0,90,1.40,80,85,0.12)
	 @paciente6 = Paciente.new("Lucia","Rodriguez",54,0,85,1.70,84,90,0.12)
         @paciente7 = Paciente.new("Daniel","Marquez",26,1,75,1.84,85,94,0.27)
         @paciente8 = Paciente.new("Juan","Luis",30,1,120,1.70,91,90,0.54)
         @paciente9 = Paciente.new("Marta","Díaz",37,0,86,1.52,77,88,0.0)
         @paciente10 = Paciente.new("Sara","Carrasco",15,0,90,1.72,87,90,0.12)

	 @menu1 = Lista.new
	 @menu2 = Lista.new
	 @menu3 = Lista.new
	 @menu4 = Lista.new
	 @menu5 = Lista.new

	 @menu1.insert_tail(@et1)
         @menu1.insert_tail(@et2)

	 @menu2.insert_tail(@et4)
         @menu2.insert_tail(@et2)
	
	 @menu3.insert_tail(@et1)
         @menu3.insert_tail(@et2)

	 @menu4.insert_tail(@et5)
         @menu4.insert_tail(@et3)

	 @menu5.insert_tail(@et2)
         @menu5.insert_tail(@et4)
         @menu5.insert_tail(@et1)

	 @menu6 = [@et1,@et2,@et4].reduce(0) {|sum,num| sum+num.valorEnergeticoKcal}
         @menu7 = [@et4,@et3].reduce(:+).round(2)
         @menu8 = [@et3,@et1,@et4].reduce(0) {|sum,num| sum + num.valorEnergeticoKcal}
         @menu9 = [@et3,@et5].reduce(:+)
         @menu10 = [@et1,@et3,@et5].reduce(0) {|sum,num| sum+num.valorEnergeticoKcal}
         @menu11 = [@et1,@et2].reduce(:+)
         @menu12 = [@et3,@et1].reduce(:+)
         @menu13 = [@et5,@et1].reduce(:+)
         @menu14 = [@et3,@et5].reduce(:+)
         @menu15 = [@et4,@et2].reduce(:+)

	 @array_menus = [@menu6,@menu7,@menu8,@menu9,@menu10,@menu11,@menu12,@menu13,@menu14,@menu15]

	 @lista_pacientes = Lista.new

	 @lista_pacientes.insert_tail(@paciente1)
	 @lista_pacientes.insert_tail(@paciente2)
	 @lista_pacientes.insert_tail(@paciente3)
	 @lista_pacientes.insert_tail(@paciente4)
	 @lista_pacientes.insert_tail(@paciente5)
	 @lista_pacientes.insert_tail(@paciente6)
	 @lista_pacientes.insert_tail(@paciente7)
	 @lista_pacientes.insert_tail(@paciente8)
	 @lista_pacientes.insert_tail(@paciente9)
	 @lista_pacientes.insert_tail(@paciente10)

  end

  describe "Initialize" do
  	it "Atributos bien inicializados" do 
	  expect(@et1.alimento).to eq("Bacon")
	  expect(@et1.grasas).to eq(69.30)
	  expect(@et1.saturadas).to eq(28.21)
	  expect(@et1.mono).to eq(27.05)
	  expect(@et1.poli).to eq(7.19)
	  expect(@et1.hidratos).to eq(0.00)
	  expect(@et1.azucares).to eq(0.00)
	  expect(@et1.polial).to eq(0.00)
	  expect(@et1.almidon).to eq(0.00)
	  expect(@et1.fibra).to eq(0.00)
	  expect(@et1.proteinas).to eq(14.6)
	  expect(@et1.sal).to eq(0.6)
	  expect(@et1.vitaminas).to eq(10.14)
	end
  end
  
  describe "Valor energético" do
	it "El valor energético (KJ) debe estar definido en un método" do
		expect(@et1.valorEnergeticoKJ).to eq(5137.95)
	end
	it "El valor energético (Kcal) debe estar definido en un método" do
		expect(@et1.valorEnergeticoKcal).to eq(1247.75)
	end
  end

  describe "IR por 100 gr de producto" do
	it "Método para el valor energético" do
		expect(@et1.valorEnergeticoKJ).to eq(5137.95)
	end
	it "Método para porcentaje de grasa" do
		expect(@et1.grasaIR).to eq(42.82)
	end
	it "Método para porcentaje de saturadas" do
		expect(@et1.saturadasIR).to eq(12.23)
	end
	it "Método para porcentaje de hidratos" do
		expect(@et1.hidratosIR).to eq(159.03)
	end
	it "Método para porcentaje de azúcares" do
		expect(@et1.azucaresIR).to eq(55.05)
	end
	it "Método para porcentaje de proteinas" do
		expect(@et1.proteinasIR).to eq(30.58)
	end
	it "Método para porcentaje de sal" do
		expect(@et1.salIR).to eq(3.67)
	end
	it "Método para porcentaje de vitaminas" do
		expect(@et1.vitaminasIR).to eq(159.03)
	end
  end

  describe "Valores por porción de 25 gramos" do
	it "Método valor energético en KJ" do
		expect(@et1.valorEKJporcion).to eq(1284.49)
	end
	it "Método valor energético en Kcal" do
		expect(@et1.valorEKcalporcion).to eq(311.94)
	end
	it "Método obtener grasas" do
		expect(@et1.grasasporcion).to eq(17.33)
	end
	it "Método obtener saturadas" do
		expect(@et1.saturadasporcion).to eq(7.05)
	end
	it "Método obtener monoinsaturadas" do
		expect(@et1.monoporcion).to eq(6.76)
	end
	it "Método obtener poliinsaturadas" do
		expect(@et1.poliporcion).to eq(1.80)
	end
	it "Método obtener hidratos" do
		expect(@et1.hidratosporcion).to eq(0.00)
	end
	it "Método obtener azucares" do
		expect(@et1.azucaresporcion).to eq(0.00)
	end
	it "Método obtener polialcoholes" do
                expect(@et1.polialcoholporcion).to eq(0.00)
        end
	it "Método obtener almidón" do
                expect(@et1.almidonporcion).to eq(0.00)
        end
	it "Método obtener fibra" do
                expect(@et1.fibrasporcion).to eq(0.00)
        end
	it "Método obtener proteinas" do
		expect(@et1.proteinasporcion).to eq(3.65)
	end
	it "Método obtener sal" do
		expect(@et1.salporcion).to eq(0.15)
	end
	it "Método obtener vitaminas" do
		expect(@et1.vitaminasporcion).to eq(2.54)
	end
  end

  describe "IR por porción de 25 gramos" do
	it "Método porcentaje de valor energético KJ" do
		expect(@et1.valorEnergeticoKJ).to eq(5137.95)
	end
	it "Método porcentaje de grasa" do
		expect(@et1.grasasIRporcion).to eq(10.71)
	end
	it "Método porcentaje de saturadas" do
		expect(@et1.saturadasIRporcion).to eq(3.06)
	end
	it "Método porcentaje de hidratos" do
		expect(@et1.hidratosIRporcion).to eq(39.76)
	end
	it "Método porcentaje de azúcares" do
		expect(@et1.azucaresIRporcion).to eq(13.76)
	end
	it "Método porcentaje de proteínas" do
		expect(@et1.proteinasIRporcion).to eq(7.65)
	end
	it "Método porcentaje de sal" do
		expect(@et1.salIRporcion).to eq(0.92)
	end
	it "Método porcentaje vitaminas" do
		expect(@et1.vitaminasIRporcion).to eq(39.76)
	end
  end

  describe "Tabla con valores" do
	it "Método para devolver dos primeras columnas de la tabla como un string" do
		expect(@et1.to_s2col).to eq("Por 100 g o 100 ml de producto | IR (por 100 g o 100 ml de producto) |\n" + 
		" Valor energético (kj/kcal) | " + 
		"#{@et1.valorEnergeticoKJ}/#{@et1.valorEnergeticoKcal} | #{@et1.valorEnergeticoKJ}% |\n" +
	       	"Grasas de las cuales: | #{@et1.grasas} | #{@et1.grasaIR}%\n" +
	       	"Saturadas | #{@et1.saturadas} | #{@et1.saturadasIR} |\n" +
	       	"Monoinsaturadas | #{@et1.mono} | - |\n" +
	       	"Poliinsaturadas | #{@et1.poli} | - |\n" +
	       	"Hidratos de carbono de los cuales: #{@et1.hidratos} | #{@et1.hidratosIR} |\n" +
	       	"Azucares | #{@et1.azucares} | #{@et1.azucaresIR}\n" +
		"Polialcoholes | #{@et1.polial} | - |\n" +
	       	"Almidón | #{@et1.almidon} | - |\n" +
	       	"Fibra alimentaria | #{@et1.fibra} | - |\n" +
	       	"Proteinas | #{@et1.proteinas} | #{@et1.proteinasIR} |\n" +
	       	"Sal | #{@et1.sal} | #{@et1.salIR} |\n" +
	       	"Vitaminas/mineral | #{@et1.vitaminas} |\n")
	end
	it "Método para devolver la tabla entera como un string" do
		expect(@et1.to_sentera).to eq("Por 100 g o 100 ml de producto | IR (por 100 g o 100 ml de producto) | " + 
		"Por porción de 25 g | IR (por porción de 25 g de producto) |\n" +
                " Valor energético (kj/kcal) | " +
                "#{@et1.valorEnergeticoKJ}/#{@et1.valorEnergeticoKcal} | #{@et1.valorEnergeticoKJ}% |" + 
		" #{@et1.valorEKJporcion} | #{@et1.valorEKcalporcion}\n" +
		"Grasas de las cuales: | #{@et1.grasas} | #{@et1.grasaIR}% | #{@et1.grasasporcion} | " + 
		"#{@et1.grasasIRporcion}\n" +
		"Saturadas | #{@et1.saturadas} | #{@et1.saturadasIR}% | #{@et1.saturadasporcion} | " +
	       	"#{@et1.saturadasIRporcion}\n" +
		"Monoinsaturadas | #{@et1.mono} | - | #{@et1.monoporcion} | - |\n" +
		"Poliinsaturadas | #{@et1.poli} | - | #{@et1.poliporcion} | - |\n" +
                "Hidratos de carbono de los cuales: #{@et1.hidratos} | #{@et1.hidratosIR} | " +
		"#{@et1.hidratosporcion} | #{@et1.hidratosIRporcion} |\n" +
		"Azucares | #{@et1.azucares} | #{@et1.azucaresIR} | #{@et1.azucaresporcion} | #{@et1.azucaresIRporcion} |" +
		"Polialcoholes | #{@et1.polial} | - | #{@et1.polialcoholporcion} | - |\n" +
		"Almidón | #{@et1.almidon} | - | #{@et1.almidonporcion} | - |\n" +
		"Fibra alimentaria | #{@et1.fibra} | - | #{@et1.fibrasporcion} | - |\n" +
		"Proteinas | #{@et1.proteinas} | #{@et1.proteinasIR} | #{@et1.proteinasporcion} | " + 
		"#{@et1.proteinasIRporcion} |\n" +
		"Sal | #{@et1.sal} | #{@et1.salIR} | #{@et1.salporcion} | #{@et1.salIRporcion} |\n" +
		"Vitaminas/mineral | #{@et1.vitaminas} | #{@et1.vitaminasIR} | #{@et1.vitaminasporcion} | " +
		"#{@et1.vitaminasIRporcion} |")
	end
  end


  describe "Comparable" do
	it "Menor <" do
		expect(@et1.valorEnergeticoKJ < @et2.valorEnergeticoKJ).to eq(false)
	end
	it "Mayor >" do
		expect(@et1.valorEnergeticoKJ > @et2.valorEnergeticoKJ).to eq(true)
	end
	it "Igual =" do
		expect(@et1.valorEnergeticoKJ == @et2.valorEnergeticoKJ).to eq(false)
	end
	it "Between" do
		expect(@et1.between?(@et2,@et3)).to eq(false)
	end
	it "Menor o igual <=" do
		expect(@et1.valorEnergeticoKJ <= @et2.valorEnergeticoKJ).to eq(false)
	end
	it "Mayor o igual >=" do
		expect(@et1.valorEnergeticoKJ >= @et2.valorEnergeticoKJ).to eq(true)
	end
  end

  describe "Menú dietético" do
  	it "Collect" do
		@menu11 = Lista.new
		@menu11.insert_tail(@et1)
		@menu11.insert_tail(@et3)

		aux = @menu11.collect{"comida"}
		expect(aux).to eq(["comida","comida"])	
	end

	it "Reduce" do
		@menu2.insert_tail(@et3)
		@menu2.insert_tail(@et4)

	end

	it "Comprobar calorias menú" do
		
		@menu1.insert_tail(@et1)
		@menu1.insert_tail(@et2)
		
		cal = @paciente1.gasto_energetico_total
		margenerrorabajo = @menu1.reduce(0) {|sum,n| sum + n.valorEnergeticoKcal*0.9}
		margenerrorarriba = @menu1.reduce(0) {|sum,n| sum+n.valorEnergeticoKcal*1.1}

		expect(cal.between?(margenerrorabajo,margenerrorarriba)).to eq(false)
		
		@menu2.insert_tail(@et4)
		@menu2.insert_tail(@et2)

		cal2 = @paciente2.gasto_energetico_total
		margenerrorabajo2 = @menu2.reduce(0) {|sum,n| sum + n.valorEnergeticoKcal*0.9}
		margenerrorarriba2 = @menu2.reduce(0) {|sum,n| sum+n.valorEnergeticoKcal*1.1}

		expect(cal2.between?(margenerrorabajo2,margenerrorarriba2)).to eq(false)

		@menu3.insert_tail(@et1)
		@menu3.insert_tail(@et2)
		
		cal3 = @paciente3.gasto_energetico_total
		margenerrorabajo3 = @menu3.reduce(0) {|sum,n| sum + n.valorEnergeticoKcal*0.9}
		margenerrorarriba3 = @menu3.reduce(0) {|sum,n| sum+n.valorEnergeticoKcal*1.1}
			
                expect(cal3.between?(margenerrorabajo3,margenerrorarriba3)).to eq(false)

		@menu4.insert_tail(@et5)
		@menu4.insert_tail(@et3)

		cal4 = @paciente4.gasto_energetico_total
		margenerrorabajo4 = @menu4.reduce(0) {|sum,n| sum + n.valorEnergeticoKcal*0.9}
		margenerrorarriba4 = @menu4.reduce(0) {|sum,n| sum + n.valorEnergeticoKcal*1.1}

		expect(cal4.between?(margenerrorabajo4,margenerrorarriba4)).to eq(false)

		@menu5.insert_tail(@et2)
		@menu5.insert_tail(@et4)
		@menu5.insert_tail(@et1)

		cal5 = @paciente5.gasto_energetico_total
		margenerrorabajo5 = @menu5.reduce(0) {|sum,n| sum + n.valorEnergeticoKcal*0.9}
		margenerrorarriba5 = @menu5.reduce(0) {|sum,n| sum + n.valorEnergeticoKcal*1.1}

		expect(cal5.between?(margenerrorabajo5,margenerrorarriba5)).to eq(false)


	end
  end

  describe "Métodos ordenacion" do
  	it "Método for con array de menus" do
		expect(@array_menus.buclesfor).to eq([@menu9,@menu14,@menu15,@menu13,@menu7,@menu11,@menu12,@menu10,@menu6,@menu8])
	end

	it "Método each con array de menus" do
		expect(@array_menus.ordenar_each).to eq([@menu9,@menu14,@menu15,@menu13,@menu7,@menu11,@menu12,@menu10,@menu6,@menu8])
	end

	it "Método sort con array de menus" do
		expect(@array_menus.sort).to eq([@menu9,@menu14,@menu15,@menu13,@menu7,@menu11,@menu12,@menu10,@menu6,@menu8])
	end

	it "Método for con lista de pacientes" do
		expect(@lista_pacientes.to_array_for).to eq([@paciente6,@paciente9,@paciente4,@paciente1,@paciente10,@paciente5,@paciente7,@paciente2,@paciente3,@paciente8])
	end

	it "Método each con lista de pacientes" do
		expect(@lista_pacientes.to_array_each).to eq([@paciente6,@paciente9,@paciente4,@paciente1,@paciente10,@paciente5,@paciente7,@paciente2,@paciente3,@paciente8])

	end

	it "Método sort con lista de pacientes" do
		expect(@lista_pacientes.sort{|a,b| a <=> b}).to eq([@paciente6,@paciente9,@paciente4,@paciente1,@paciente10,@paciente5,@paciente7,@paciente2,@paciente3,@paciente8])
	
	end

#	it "Benchmark" do
#		n = 50000
#
#		Benchmark.bm do |x|
#			x.report("array for: ") {n.times do @array_menus.buclesfor; end}
#			x.report("array each: ") {n.times do @array_menus.ordenar_each; end}
#			x.report("array sort: ") {n.times do @array_menus.sort; end}
#			x.report("lista for: ") {n.times do @lista_pacientes.to_array_for; end}
#			x.report("lista each: ") {n.times do @lista_pacientes.to_array_each; end}
#			x.report("lista sort: ") {n.times do @lista_pacientes.sort; end}
#		end
#
#	end
   end

   describe "Clase menú" do
	menu = Menu.new("Lunes") do
	titulo      "Bajo en calorías"
	ingesta     :min => 30, :max => 35
	desayuno    :descripcion => "Pan de trigo integral",
				:porcion => "1 rodaja",
				:gramos => 100,
				:grasas => 3.3,
				:carbohidratos => 54.0,
				:proteinas => 11.0,
				:fibra => 2.3,
				:sal => 0.06
	desayuno    :descripcion => "Actimel",
				:porcion => "1 porci ́on",
				:gramos => 100,
				:grasas =>  3.4,
				:carbohidratos => 4.4,
				:proteinas => 3.6,
				:sal => 0.05
	almuerzo    :descripcion =>  "Arroz",
				:porcion => "1 taza",
				:gramos => 100,
				:grasas => 0.9,
				:carbohidratos => 81.6,
				:proteinas => 6.67,
				:fibra => 1.4,
				:sal => 0.04
	almuerzo     :descripcion =>  "Lentejas",
				:porcion => "1/2 cuchar ́on",
				:grasas => 0.4,
				:carbohidratos => 20.0,
				:proteinas => 9.0,
				:fibra => 8.0,
				:sal => 0.02
	almuerzo    :descripcion => "Naranja",
				:porcion => "1 pieza",
				:gramos => 100,
				:grasas =>  0.12,
				:carbohidratos => 11.75,
				:proteinas => 0.94,
				:fibra => 2.4
	cena        :descripcion => "Leche entera hacendado",
				:porcion => "1 vaso",
				:gramos => 100,
				:grasas => 3.6,
				:carbohidratos => 4.6,
				:proteinas => 3.1,
				:sal => 0.13
	end

   	it "Método to_s" do
		expect(menu.to_s).to eq("Lunes                          Composición Nutricional\n" +
					"===========================================================\n" +
 					"                          grasas  carbohidratos  proteínas  fibra  sal  valor energético\n" + 
					"Desayuno\n" +
					"*Pan de trigo integral*      3.3        54.0        11.0        2.3     0.06    28.97\n" +
					"*Actimel*      3.4        4.4        3.6             0.05    6.26\n" +
					"\nAlmuerzo\n" +
					"*Arroz*            0.9          81.6        6.67        1.4        0.04        36.12\n" + 
					"*Lentejas*            0.4          20.0        9.0        8.0        0.02        11.96\n" +
					"*Naranja*            0.12          11.75        0.94        2.4                5.18\n" +
					"\nCena\n" +
					"*Leche entera hacendado*  3.6      4.6     3.1             0.13      6.32\n" +
					"Valor energético total   94.81")	
		end
   	end
end

