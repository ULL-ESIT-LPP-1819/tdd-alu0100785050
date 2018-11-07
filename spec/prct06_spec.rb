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
		expect(@et1.grasaIR).to eq(42.80)
	end
	it "Método para porcentaje de saturadas" do
		expect(@et1.saturadasIR).to eq(12.23)
	end
	it "Método para porcentaje de hidratos" do
		expect(@et1.hidratosIR).to eq(159.00)
	end
	it "Método para porcentaje de azúcares" do
		expect(@et1.azucaresIR).to eq(55.04)
	end
	it "Método para porcentaje de proteinas" do
		expect(@et1.proteinasIR).to eq(30.58)
	end
	it "Método para porcentaje de sal" do
		expect(@et1.salIR).to eq(3.67)
	end
  end
end

