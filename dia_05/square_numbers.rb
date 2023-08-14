=begin
Exercício 1: Funções Lambda e Map
Crie uma função que recebe uma lista de números e retorna uma nova
lista contendo o quadrado de cada número usando funções lambda e o método map.
=end

# Função que calcula o quadrado de cada número usando map e lambda
def square_numbers (numbers)
  square = -> (n) { n ** 2 }
  square_values = numbers.map(&square)
  square_values.each { |value| puts value}
end

numbers = [1, 2, 3, 4, 5]
square_numbers(numbers)