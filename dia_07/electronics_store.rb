class ElectronicProduct
  attr_reader :name, :price, :stock

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

  def purchase(quantity)
    if quantity <= @stock
      @stock -= quantity
      true
    else
      false
    end
  end
end

class Laptop < ElectronicProduct
  def initialize(name, price, stock, screen_size)
    super(name, price, stock)
    @screen_size = screen_size
  end
end

class Smartphone < ElectronicProduct
  def initialize(name, price, stock, os)
    super(name, price, stock)
  end
end

#Teste de loja de produtos eletrônicos
laptop = Laptop.new("Laptop X", 1000, 5, "15 inch")
smartphone = Smartphone.new("Phone Y", 500, 10, "iOS")

puts "Estoque inicial do laptop: #{laptop.stock}"
puts "Estoque inicial do smartphone: #{smartphone.stock}"

laptop.purchase(3)
smartphone.purchase(8)

puts "Estoque após compras: "
puts "Laptop: #{laptop.stock}"
puts "Smpartphone: #{smartphone.stock}"