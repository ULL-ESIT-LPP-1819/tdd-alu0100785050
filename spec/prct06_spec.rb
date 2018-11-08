RSpec.describe Prct06 do

  before :each do
	  @et1 = Etiqueta.new("Bacon","69.30","28.21","27.05","7.19","0.00","0.00","0.00",
			      "0.00","0.00","14.6","0.6","10.14")
  end

  describe "Initialize" do
  	it "Atributos bien inicializados" do 
	  expect(@et1.alimento).to eq("Bacon")
	  expect(@et1.grasas).to eq("69.30")
	  expect(@et1.saturadas).to eq("28.21")
	  expect(@et1.mono).to eq("27.05")
	  expect(@et1.poli).to eq("7.19")
	  expect(@et1.hidratos).to eq("0.00")
	  expect(@et1.azucares).to eq("0.00")
	  expect(@et1.polial).to eq("0.00")
	  expect(@et1.almidon).to eq("0.00")
	  expect(@et1.fibra).to eq("0.00")
	  expect(@et1.proteinas).to eq("14.6")
	  expect(@et1.sal).to eq("0.6")
	  expect(@et1.vitaminas).to eq("10.14")
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
end

