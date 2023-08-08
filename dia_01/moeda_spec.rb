#Currency_converter_spec.rb
require_relative 'moeda'
require 'rspec'

describe CurrencyConverter do
  context "Conversões de moeda" do
    it "converte de Reais para Dólares" do
      expect(CurrencyConverter.convert_to_usd(100, 5)).to eq(20)
    end
  end
end