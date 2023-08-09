require_relative 'product'
require 'rspec'

describe Product do
  context "Gestão de produtos" do

    it "atualiza o estoque do produto" do
      product = Product.new("Caneta", 2, 10)
      product.update_stock(5)
      expect(product.stock).to eq(15)
    end

    it "calcula o valor do total dos produtos" do
      product = Product.new("Camiseta", 25, 20)
      expect(product.total_value).to eq(500)
    end

    it "verifica se o produto está disponível" do
      product = Product.new("Lápis", 1, 0)
      expect(product.available?).to be_falsey

    end

  end

end