=begin
Exercício 1: Manipulação de Contas Bancárias
Crie uma classe chamada BankAccount que represente uma conta bancária.
A classe deve ter métodos para depositar, sacar e verificar o saldo.
Em seguida, crie instâncias dessa classe e teste os métodos.
=end

class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
    else
      puts "Saldo Insuficiente"
    end
  end
end

# Teste a classe BanckAccount
account = BankAccount.new
account.deposit(100)
puts "Saldo: #{account.balance}"
account.withdraw(50)
puts "Saldo: #{account.balance}"
account.withdraw(70)
puts "Saldo: #{account.balance}"