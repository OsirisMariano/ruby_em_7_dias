# calculator_spec.rb
require_relative 'calc' # Isso deve corresponder ao nome do arquivo onde você implementou a calculadora
require 'rspec'

describe Calculator do
  context "Operações matemáticas" do
    it "soma dois números" do
      expect(Calculator.calculate(5, "+", 3)).to eq(8)
    end

    it "subtrai dois números" do
      expect(Calculator.calculate(10, "-", 4)).to eq(6)
    end

    it "multiplica dois números" do
      expect(Calculator.calculate(6, "*", 2)).to eq(12)
    end

    it "divide dois números" do
      expect(Calculator.calculate(15, "/", 3)).to eq(5)
    end
  end
end
