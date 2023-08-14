=begin
Exercício 1: Sistema de Reservas de Hotel
Crie um sistema de reservas de hotel que permita aos
hóspedes fazerem reservas, verificarem disponibilidade e
cancelarem reservas. Use herança para criar classes para
quartos simples e suítes de luxo.
=end

class Hotel
  attr_accessor :numero, :disponibilidade

  def initialize(numero)
    @numero = numero
    @disponibilidade = true
  end
  def reservar
    if @disponibilidade
      @disponibilidade = false
      puts "Quarto #{@numero} reservado."
    else
      puts "Desculpe, o quarto #{@numero} não está disponivel."
    end
  end

  def cancelar_reserva
    if !@disponibilidade
      @disponibilidade = true
      puts "Reserva do quarto #{@numero} cancelada."
    else
      puts "Não há reserva para o quarto #{@numero}."
    end
  end
end

class SuiteDeLuxo < Hotel
  def initialize(numero)
    super(numero)
  end

  def reservar
    if @disponibilidade
      @disponibilidade = false
      puts "Suíte de luxo #{@numero} reservada."
    else
      puts "Desculpe, a suíte de luxo #{@numero} não está disponível."
    end
  end
end

#Função para interagir com o usuário
def interagir
  print "Gostaria de reservar um quarto? (sim/não): "
  resposta = gets.chomp.downcase
  if resposta == "sim"
    print "Qual tipo de quarto você deseja reservar? (Quarto/Suíte): "
    tipo = gets.chomp.downcase
    print "Digite o número do quarto: "
    numero = gets.chomp.to_i

    if tipo == "quarto"
      quarto = Hotel.new(numero)
      quarto.reservar
    elsif tipo == "suíte"
      suíte = SuiteDeLuxo.new(numero)
      suite.reservar
    else
      puts
      "Tipo de quarto inválido."
    end
  else
    puts "Obrigado e até logo!"
  end
end

#Interagindo com o usuário
interagir