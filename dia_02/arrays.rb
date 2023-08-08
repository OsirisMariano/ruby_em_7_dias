=begin
Exercício 2: Manipulação de Arrays e Hashes
Crie um programa Ruby que define um array de nomes de frutas e um
hash de preços correspondentes.

Em seguida, faça o seguinte:
Adicione uma nova fruta ao array.
Atualize o preço de uma fruta no hash.
Exiba todos os nomes de frutas em ordem alfabética.
Calcule o preço médio das frutas.
=end

# Define o array de nomes de frutas
fruits = ["Maçã", "Banaca", "Laranja", "Pera", "Uva"]

#Define o hash de preços das frutas
prices = {
  "Maçã" => 2.5,
  "Banana" => 1.0,
  "Laranja" => 1.8,
  "Pera" => 2.0,
  "Uva" => 3.5
}

# Adiciona uma nova fruta ao array
fruits.push ("Melancia")

# Adiciona o preço de uma fruta no hash
prices["Banana"] = 1.2

# Exibe os nomes das frutas em ordem alfabética
sorted_fruits = fruits.sort
puts "Nomes das frutas em ordem alfabética: #{sorted_fruits}"

# Calcular o preço médio das frutas
average_price = prices.values.sum / prices.length
puts "Preço médio das frutas: #{average_price}"