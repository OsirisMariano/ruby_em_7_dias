require_relative 'square_numbers'
require 'rspec'

describe "Função square_number" do
  it 'calcula o quadrado de cada número da lista' do
    numbers = [1, 2, 3, 4, 5]
    square_numbers = square_numbers(numbers)
    expect(square_numbers).to eq([1, 4, 9, 16, 25])
  end
end