=begin
Exercício 3: Conversor de Moeda
Crie um programa Ruby que solicite ao usuário um valor em
reais (BRL) e uma taxa de câmbio do dólar (USD). O programa deve
converter o valor em reais para dólares e exibir o resultado
=end

# currency_converter.rb
class CurrencyConverter
  def self.convert_to_usd(value_brl, exchange_rate)
    value_usd = value_brl / exchange_rate
    value_usd.round(2)
  end
end
# Solicite o valor em reias e a taxa de câmbio ao usuário
print "Digite o valor em reais (BRL): "
valor_brl = gets.chomp.to_f

print "Digite a taxa de câmbio do dolar (USR): "
taxa_dolar = gets.chomp.to_f

# Converte o valor em reais para dólares
valor_usd = valor_brl / taxa_dolar

puts "O valor em dólares é: #{valor_usd.round(2)}"