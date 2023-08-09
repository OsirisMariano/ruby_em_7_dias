=begin

Exercício 3: Gestão de Produtos
Crie uma classe chamada Product para representar um produto em um sistema
de inventário. A classe deve ter propriedades como nome, preço e quantidade em estoque.
Implemente métodos para atualizar o estoque, calcular o valor total dos produtos e
verificar se um produto está disponível. Crie instâncias da classe e teste os métodos.

=end

class Product
  attr_reader :name, :price, :stock

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock  = stock
  end

  def update_stock(amount)
    @stock += amount
  end

  def total_value
    @price * @stock
  end

  def available?
    @stock > 0
  end
end

# Teste de classe Product
product = Product.new("Notebook", 100, 5)
puts "Nome: #{product.name}"
puts "Preço: #{product.price}"
puts "Estoque: #{product.stock}"
puts "Valor total: #{product.total_value}"
puts "Disponível? #{product.available?}"
product.update_stock(3)
puts "Estoque atualizado: #{product.stock}"