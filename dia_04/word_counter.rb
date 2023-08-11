=begin
Exercício 1: Leitura de Arquivo e Contagem de Palavras
Crie um programa Ruby que leia um arquivo de texto e conte o número total
de palavras nele. Desconsidere espaços em branco, pontuação e letras maiúsculas/minúsculas.
=end

# Lê o conteudo do arquivo de texto
file_path = File.expand_path('texto.txt',__dir__)
content = File.read(file_path)

# Remove os espaços em branco e pontuação, converte para letras minúsculas e divide em palavras
words = content.downcase.gsub(/[^\w\s]/, "").split

# Exibe o número total de palavras
puts "Número de total de palavras: #{words.length}"