require "spec_helper"

RSpec.describe "Test herencia - Paciente" do

  before :each do
    @paciente1 = Paciente.new("Lucas","Perez",45,1,85,1.78,70,95)
    @individuo1 = Individuo.new(45,"Lucas","Perez",1,85)
  end

  describe "Comprobaciones constructor" do
	
	it "Método initialize paciente" do
		expect(@paciente1.talla).to eq(1.78)
		expect(@paciente1.circun_cintu).to eq(70)
		expect(@paciente1.circun_cadera).to eq(95)
	end

	it "Método initialize individuo" do
		expect(@individuo1.edad).to eq(45)
		expect(@individuo1.nombre).to eq("Lucas")
		expect(@individuo1.apellidos).to eq("Perez")
		expect(@individuo1.sexo).to eq(1)
		expect(@individuo1.peso).to eq(85)
	end
  end

  describe "Métodos to_s" do
	it "Método to_s para individuo" do
                expect(@individuo1.to_s).to eq("Edad: 45 -- Nombre: Lucas -- Apellidos: Perez -- Sexo: 1 -- Peso: 85")
        end

	it "Método to_s para paciente" do
		expect(@paciente1.to_s).to eq("Edad: 45 -- Nombre: Lucas -- Apellidos: Perez -- Sexo: 1 -- Peso: 85 -- Talla: 1.78 -- Circunferencia Cintura: 70 -- Circunferencia Cadera: 95")	
	end	
  end
end
