require "spec_helper"

RSpec.describe "Test herencia - Paciente" do

  before :each do
    @paciente1 = Paciente.new("Lucas","Perez",45,1,85,1.78,70,95)
    @paciente2 = Paciente.new("Kevin","Garcia",19,1,75,1.80,80,90)
    @paciente3 = Paciente.new("Pepe","Lopez",25,1,100,1.67,95,92)
    @paciente4 = Paciente.new("Maria","Suarez",30,0,86,1.48,75,80)
    @paciente5 = Paciente.new("Lola","Ginebra",12,0,90,1.40,80,85)

    @individuo1 = Individuo.new(45,"Lucas","Perez",1,85)
    @lista = Lista.new
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

  describe "Pruebas para comprobar tipos, clases y jerarquías" do
  	it "Comprobar clases" do
		expect(@paciente1.class).to eq(Paciente)
		expect(@individuo1.class).to eq(Individuo)
		#expect(@paciente1.superclass).to eq(Individuo)
	end
	it "Comprobar métodos dentro de clases" do
		expect(@paciente2.respond_to?('imc')).to eq(true)
		expect(@paciente2.respond_to?('to_s')).to eq(true)
		expect(@paciente2.respond_to?('rss')).to eq(false)
		expect(@individuo2.respond_to?('to_s')).to eq(true)
	end
	it "Comprobar el tipo de los métodos" do
		expect(@individuo4.is_a?(Object)).to eq(true)
		expect(@paciente3.is_a?(Individuo)).to eq(true)
		expect(@paciente4.is_a?(Object)).to eq(true)
		expect(@individuo1.instance_of? Individuo).to eq(true)
		expect(@paciente4.instance_of? Paciente).to eq(true)
	end

	
  end

  describe "Lista individuos" do
	it "Clasificación de índice de masa corporal" do
	  @lista.insert_tail(@paciente1)
          @lista.insert_tail(@paciente2)
          @lista.insert_tail(@paciente3)
          @lista.insert_tail(@paciente4)
          @lista.insert_tail(@paciente5)

	  imcbajopeso = []
	  imcadecuado = []
	  imcsobrepeso = []
	  imcobesidad1 = []
	  imcobesidad2 = []

	  while(@lista.empty? == false) do
		  imc = @lista.extract_head.imc

		  if imc < 18.5
			  imcbajopeso.push(imc)
		  elsif imc > 18.5 and imc < 24.9
			  imcadecuado.push(imc)
		  elsif imc > 25.0 and imc < 29.9
		  	  imcsobrepeso.push(imc)
		  elsif imc > 30.0 and imc < 34.9
			  imcobesidad1.push(imc)
		  elsif imc > 35.0
			  imcobesidad2.push(imc)
		  end
		  
	  end

	  expect(imcbajopeso).to eq([])
	  expect(imcadecuado).to eq([23.15])
	  expect(imcsobrepeso).to eq([26.83])
	  expect(imcobesidad1).to eq([])
	  expect(imcobesidad2).to eq([35.86,39.26,45.92])

        end 
  end
end
