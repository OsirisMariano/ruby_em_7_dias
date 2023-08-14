require_relative 'math_operations'
require 'rspec'

describe MathOperations do
  context "Biblioteca de matemática" do
    it "realiza operações matemáticas corretamente" do
      expect(MathOperations.add(5, 3)).to eq(8)
      expect(MathOperations.subtract(10, 4)).to eq(6)
      expect(MathOperations.multiply(6, 7)).to eq(42)
      expect(MathOperations.divide(20, 4)).to eq(5)
    end

  end

end