=begin
Exercício 2: Verificador de Idade
Crie um programa Ruby que pergunte ao usuário sua idade e, com base na
idade inserida, exiba uma mensagem apropriada, como
"Você é menor de idade", "Você é um adulto" ou "Você é um(a) idoso(a)".
=end

# age_checker.rb
class AgeChecker
  def self.check_age
    print "Digite a sua idade: "
    age = gets.chomp.to_i

    if age < 18
      "Você é menor de idade."
    elsif age >= 18 && age < 65
      "Você é adulto."
    else
      "Você é um(a) idoso(a)."
    end
  end
end
# Chamando o método check_age para classificar a idade digitada pelo usuário
puts AgeChecker.check_age
