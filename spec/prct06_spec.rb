RSpec.describe Prct06 do

  before :each do
	  @et1 = Etiqueta.new("Bacon","69.30","28.21","27.05","7.19","0.00","0.00","0.00",
			      "0.00","0.00","14.6","0.6","10.14")
  end

  describe "Atributos bien inicializados" do
  	it do 
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
	it "El valor energético debe estar definido en un método" do
	  expect(@et1.valor_energetico).to eq("5137.95KJ/1250.75Kcal")
	end
  end

end

