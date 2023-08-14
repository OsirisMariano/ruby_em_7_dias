require_relative 'sum_numbers'
require 'rspec'

describe "Função sum_numbers" do
  it "calcula a soma de todos os números da lista" do
    numbers = [1, 2, 3, 4, 5]
    total_sum = sum_numbers(numbers)
    expect(total_sum).to eq(15)
  end
end