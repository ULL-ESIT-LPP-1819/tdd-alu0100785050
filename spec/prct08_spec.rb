require "spec_helper"

RSpec.describe "Test herencia - Paciente" do
  describe "Comprobaciones constructor" do
	
	before :each do
		@paciente1 = Paciente.new(45,0,58,1.78,70,95)
		@individuo1 = Individuo.new("Lucas","Perez",1,78)
	end
	
  end
end
