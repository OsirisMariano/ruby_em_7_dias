=begin
Exercício 1: Calculadora Simples
Crie um programa Ruby que solicite ao usuário dois números e uma
operação (+, -, *, /) e, em seguida, realize a operação selecionada nos números fornecidos.
=end

# calculator.rb
class Calculator
  def self.calculate
    print "Digite o primeiro número:"
    num1 = gets.chomp.to_f

    print "Digite o operador (+, -, *, /):"
    operator = gets.chomp

    print "Digite o segundo número:"
    num2 = gets.chomp.to_f

    result = case operator
             when "+"
               num1 + num2
             when "-"
               num1 - num2
             when "*"
               num1 * num2
             when "/"
               num1 / num2
             else
               "Operação inválida"
             end

    puts "Resultado: #{result}"
  end
end

Calculator.calculate