#Funçãoque calcula a soma de todos os elementos usando reduce e lambda
def sum_numbers(numbers)
  sum = -> (total, n) {total + n}
  numbers.reduce(0, &sum)
end

numbers = [1, 2, 3, 4, 5]
total_sum = sum_numbers(numbers)
puts "Soma dos números: #{total_sum}"