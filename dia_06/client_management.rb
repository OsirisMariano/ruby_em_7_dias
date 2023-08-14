=begin
Exercício 1: Sistema de Cadastro de Clientes
Crie um sistema de cadastro de clientes que permita adicionar
novos clientes, exibir informações de um cliente específico e
listar todos os clientes cadastrados. Use módulos para organizar o código.
=end

module ClientManagement
  class Client
    attr_accessor :name, :email

    def initialize(name, email)
      @name = name
      @email = email
    end

    def to_s
      "#{name} = #{email}"
    end
  end

  class ClientDatabase
    attr_accessor :clients

    def initialize
      @clients = []
    end

    def add_client(client)
      clients << client
    end

    def list_clients
      clients.each { |client| puts client}
    end
  end
end

# Teste do sistema de cadastro de clientes
include ClientManagement
database = ClientDatabase.new

client1 = Client.new("João", "joao@example.com")
client2 = Client.new("Maria", "maria@example.com")

database.add_client(client1)
database.add_client(client2)

puts "Lista de clientes:"
database.list_clients