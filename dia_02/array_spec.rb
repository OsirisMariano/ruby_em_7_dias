require_relative 'arrays'
require 'rspec'

describe ArrayHashManipulator do
  context "Manipulação de Arrays e Hashes" do
    it "adiciona uma nova fruta ao array" do
      expect(ArrayHashManipulator.add_fruit(["Maçã", "Banana"], "Laranja")).to eq(["Maçã", "Banana", "Laranja"])
    end

    it "atualiza o preço de uma fruta no hash" do
      expect(ArrayHashManipulator.update_price({"Maçã" => 2.5, "Banana" => 1.2}, "Laranja", 2.8)).to eq({"Maçã" => 2.5, "Banana" => 1.2, "Laranja" => 2.8})
    end

    it "ordena os nomes das frutas em ordem alfabética" do
      expect(ArrayHashManipulator.sort_fruits(["Banana", "Maçã", "Laranja"])).to eq(["Banana", "Laranja", "Maçã"])
    end

    it "calcula o preço médio das frutas" do
      expect(ArrayHashManipulator.average_price({"Maçã" => 2.5, "Banana" => 1.0, "Laranja" => 1.8})).to eq(1.7666666666666666)
    end
  end
end
