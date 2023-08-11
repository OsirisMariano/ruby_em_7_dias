require_relative 'word_counter'
require 'rspec'

describe WordCounter do
  context "Leitura de Arquivo e Contagem de Palavras" do
    it "conta o número total de palavras no arquivo" do
      word_counter = WordCounter.new("texto.txt")
      expect(word_counter.word_count).to eq(25)
    end
  end
end