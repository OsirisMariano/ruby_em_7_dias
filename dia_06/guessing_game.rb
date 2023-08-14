=begin
Exercício 3: Jogo de Adivinhação
Crie um jogo de adivinhação em que o computador escolhe um número
aleatório e o jogador tenta adivinhar qual é esse número.
Use um módulo para encapsular a lógica do jogo e forneça uma interface simples para o jogador.
=end

module GuessingGame
  class Game
    def initialize
      @number_to_guess = rand(1..100)
    end

    def play(guess)
      if guess == @number_to_guess
        puts "Parabéns, você acertou!"
      elsif guess < @number_to_guess
        puts "Tente um número maior."
      else
        puts "Tente um número menor."
      end
    end
  end
end

#Teste do jogo de adivinhação
include GuessingGame
game = Game.new
puts "Bem-vindo ao jogo de adivinhação!"
loop do
  print "Digite um número: "
  guess = gets.chomp.to_i
  game.play(guess)
  break if guess == game.instance_variable_get(:@number_to_guess)
end