require_relative 'bank_account'
require 'rspec'

describe BankAccount do
  context "Manipulação de Contas Bancárias" do
    it "deposita dinheiro na conta" do
      account = BankAccount.new
      account.deposit(100)
      expect(account.balance).to eq(100)
    end

    it "saca dinheiro da conta" do
      account = BankAccount.new
      account.deposit(200)
      account.withdraw(50)
      expect(account.balance).to eq(150)
    end

    it "não permite saque se o saldo for insuficiente" do
      account = BankAccount.new
      account.deposit(30)
      account.withdraw(50)
      expect(account.balance).to eq(30)
    end
  end

end