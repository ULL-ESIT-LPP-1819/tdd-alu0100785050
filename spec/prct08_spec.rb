require "spec_helper"

RSpec.describe "Test herencia - Paciente" do
  describe "Comprobaciones constructor" do
	
	before :each do
		@paciente1 = Paciente.new(45,0,58,1.78,70,95)
		@individuo1 = Individuo.new(45,"Lucas","Perez",1,85)
	end

	it "Método initialize paciente" do
		expect(@paciente1.edad).to eq(45)
		expect(@paciente1.sexo).to eq(0)
		expect(@paciente1.peso).to eq(58)
		expect(@paciente1.talla).to eq(1.78)
		expect(@paciente1.circun_cintu).to eq(70)
		expect(@paciente1.circun_cadera).to eq(95)
	end
	
  end
end
