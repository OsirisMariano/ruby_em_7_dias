require_relative 'hotel'
require 'rspec'

describe Hotel do
  context "Sistema de Reserva de Hotel" do
    it "adiciona e lista quartos disponível corretamente" do
      hotel = Hotel.new

      room1 = Room.new(101)
      room2 = Room.new(102)
      suite1 = Suite.new(201)

      hotel.add_room(room1)
      hotel.add_room(room2)
      suite1.add_room(suite1)

      room1.book
      suite1.book

      exect{hotel.list_available_rooms}.to output(/Room 102/).to_stdout
    end
  end
end