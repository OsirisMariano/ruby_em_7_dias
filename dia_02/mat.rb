=begin
Exercício 3: Funções Matemáticas
Crie um programa Ruby que define várias funções matemáticas simples, como soma,
subtração, multiplicação e divisão. Em seguida, faça o seguinte:

Peça ao usuário para escolher uma operação.
Peça ao usuário dois números.
Execute a operação selecionada nos números fornecidos e exiba o resultado.
Lembre-se de que esses exercícios visam praticar a manipulação de diferentes
tipos de dados, como strings, números, arrays e hashes, além de trabalhar com
funções/métodos em Ruby. Isso ajudará a fortalecer sua compreensão desses conceitos.
=end

# Definição de funções matemáticas simples
# Definição de funções matemáticas simples
def soma(a, b)
  a + b
end

def subtracao(a, b)
  a - b
end

def multiplicacao(a, b)
  a * b
end

def divisao(a, b)
  a / b.to_f
end

# Solicita ao usuário para escolher uma operação
puts "Escolha uma operação: +, -, *, /"
operacao = gets.chomp

# Solicita ao usuário dois números
print "Digite o primeiro número: "
numero1 = gets.chomp.to_f

print "Digite o segundo número: "
numero2 = gets.chomp.to_f

# Executa a operação selecionada e exibe o resultado
resultado = case operacao
            when "+"
              soma(numero1, numero2)
            when "-"
              subtracao(numero1, numero2)
            when "*"
              multiplicacao(numero1, numero2)
            when "/"
              divisao(numero1, numero2)
            else
              "Operação inválida"
            end

puts "Resultado: #{resultado}"
