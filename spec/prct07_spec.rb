require "spec_helper"

RSpec.describe Lista do
  describe "Lista doblemente enlazada" do
	
	before :each do
		@et1 = Etiqueta.new("Bacon",69.30,28.21,27.05,7.19,0.00,0.00,0.00,0.00,0.00,14.6,0.6,10.14)	
		@et2 = Etiqueta.new("Pan",4.70,1.00,1.40,1.31,47.50,0.00,0.00,0.00,4.10,7.54,1.1,27.00)
		@et3 = Etiqueta.new("Tofu",4.78,0.69,1.06,2.70,3.30,0.00,0.00,0.00,0.30,8.08,3.80,20.00)
		@et4 = Etiqueta.new("Queso",32.20,19.57,8.14,0.74,0.36,0.04,0.00,0.00,0.00,25.39,6.7,20.00)
		@et5 = Etiqueta.new("Salsa Barbacoa",1.80,0.30,0.80,0.70,11.60,0.00,0.00,0.00,0.60,1.80,0.8,25.00)
		@lista_prueba = Lista.new()
	end
	
	it "Lista vacía" do
	  expect(@lista_prueba.empty).to eq(true)
  	end

	it "Insertar por la cola" do
	  @lista_prueba.insert_tail(@et1)
	  expect(@lista_prueba.tail.value).to eq(@et1)
	end

	it "Extraer por el head" do
	  @lista_prueba.insert_tail(@et1)
	  @lista_prueba.insert_tail(@et2)
	  expect(@lista_prueba.extract_head).to eq(@et1)
	end
  end
end
