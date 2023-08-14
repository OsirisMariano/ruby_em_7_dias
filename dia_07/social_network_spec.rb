require_relative 'social_network' # Nome do arquivo onde você implementou as classes relacionadas à rede social
require 'rspec'

describe User do
  context "Rede Social Simplificada" do
    it "cria posts, segue outros usuários e exibe feed corretamente" do
      user1 = User.new("user1")
      user2 = User.new("user2")
      user3 = User.new("user3")

      user1.create_post("Hello, world!")
      user2.create_post("Ruby is fun!")
      user3.create_post("Learning OOP in Ruby")

      user1.follow(user2)
      user2.follow(user3)

      feed = user1.news_feed

      expect(feed.length).to eq(1)
      expect(feed[0].content).to eq("Learning OOP in Ruby")
    end
  end
end
