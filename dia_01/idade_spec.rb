require_relative 'idade'
require 'rspec'

RSpec.describe AgeChecker do
  context "Classificações etárias" do
    it "classifica como menor de idade" do
      expect(AgeChecker.check_age(15)).to eq("Você é menor de idade.")
    end

    it "classifica como adulto" do
      expect(AgeChecker.check_age(25)).to eq("Você é adulto.")
    end

    it "classifica como idoso" do
      expect(AgeChecker.check_age(70)).to eq("Você é um(a) idoso(a).")
    end
  end
end
