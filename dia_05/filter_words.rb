=begin
Exercício 2: Filtragem com Funções Lambda
Crie uma função que recebe uma lista de palavras e retorna uma nova
lista contendo apenas as palavras que começam com uma letra específica
fornecida pelo usuário, usando funções lambda e o método select.
=end

#Função que filtra palavras começando com uma letra específica usando select e lambda
def filter_words_by_starting_letter(words, letter)
  starts_with_letter = -> (word)  {word.start_with?(letter)}
  words.select(&starts_with_letter)
end

words = ["apple", "banana", "cherry", "date", "grape"]
filtered_words = filter_words_by_starting_letter(words, "c")
puts filtered_words.inspect

