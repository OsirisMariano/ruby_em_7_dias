require_relative 'strings'
require 'rspec'

describe StringNumberManipulator do
  context "Manipulação de Strings e Números" do
    it "conta o número de caracteres na string" do
      expect(StringNumberManipulator.count_characters("hello")).to eq(5)
    end

    it "converte um número inteiro em ponto flutuante" do
      expect(StringNumberManipulator.integer_to_float(10)).to eq(10.0)
    end

    it "concatena a string com outra string" do
      expect(StringNumberManipulator.concatenate_strings("Ruby", " é incrível!")).to eq("Ruby é incrível!")
    end

    it "converte a string para maiúsculas" do
      expect(StringNumberManipulator.uppercase_string("ruby")).to eq("RUBY")
    end

    it "converte a string para minúsculas" do
      expect(StringNumberManipulator.lowercase_string("RUBY")).to eq("ruby")
    end
  end
end
