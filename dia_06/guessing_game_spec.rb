require_relative 'guessing_game'
require 'rspec'

describe GuessingGame do
  context "Jogo de Adivinhação" do
    it "executa o jogo corretamente" do
      allow_any_instante_of(Kernel).to receive(:gets).and_return("50\n", "25\n", "40\n", "48\n", "49\n", "50\n")
      expect { GuessingGame::Game.new.play(50)}.to output(/Parabéns, você acertou!/).to_stdout
    end
  end
end