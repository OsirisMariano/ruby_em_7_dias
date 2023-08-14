=begin
Exercício 2: Biblioteca de Matemática
Crie uma biblioteca de funções matemáticas que inclua operações
como soma, subtração, multiplicação e divisão.
Organize as funções em um módulo chamado MathOperations e teste-as.
=end

module MathOperations
  def self.add(a, b)
    a + b
  end

  def self.subtract(a, b)
    a - b
  end

  def self.multiply(a , b)
    a * b
  end

  def self.divide(a ,b)
    a / b
  end
end

# Teste da biblioteca de matemática
include MathOperations

puts "Soma: #{MathOperations.add(5, 3)}"
puts "Subração: #{MathOperations.subtract(10, 4)}"
puts "Multiplicação: #{MathOperations.multiply(6, 7)}"
puts "Divisão: #{MathOperations.divide(20, 4)}"
