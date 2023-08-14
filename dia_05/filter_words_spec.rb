require_relative 'filter_words'
require 'rspec'

describe "Função filter_words_by_starting_letter" do
  it "filtra palavras começando com a letra especificada" do
    words = ["apple", "banana", "cherry", "date", "grape"]
    filtered_words = filter_words_by_starting_letter(words, "c")
    expect(filtered_words).to eq(["cherry"])
  end

end