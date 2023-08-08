=begin
Exercício 1: Manipulação de Strings e Números
Crie um programa Ruby que solicite ao usuário uma string e um número inteiro.

Em seguida, faça o seguinte:
Conte e exiba o número de caracteres na string.
Converta o número inteiro em um número de ponto flutuante.
Concatene a string com outra string de sua escolha.
Exiba a string em letras maiúsculas e minúsculas.
=end

# string_number_manipulator.rb
class StringNumberManipulator
  def self.count_characters(input_string)
    input_string.length
  end

  def self.integer_to_float(integer)
    integer.to_f
  end

  def self.concatenate_strings(string1, string2)
    string1 + string2
  end

  def self.uppercase_string(input_string)
    input_string.upcase
  end

  def self.lowercase_string(input_string)
    input_string.downcase
  end
end

