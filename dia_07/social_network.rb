class User
  attr_reader :username, :posts

  def initialize(username)
    @username = username
    @posts = []
    @following = []
  end

  def follow(user)
    @following << user
  end

  def create_post(content)
    post = Post.new(self, content)
    @posts << post
  end

  def news_feed
    feed = []
    @following.each do |user|
      feed.concat(user.posts)
    end
    feed.sort_by(&:timestamp).reverse
  end
end

class Post
  attr_reader :user, :content, :timestamp

  def initialize(user, content)
    @user = user
    @content = content
    @timestamp = Time.now
  end
end

# Teste da rede social simplificada
user1 = User.new("user1")
user2 = User.new("user2")
user3 = User.new("user3")

user1.create_post("Hello, world!")
user2.create_post("Ruby is fun!")
user3.create_post("Learning OOP in Ruby")

user1.follow(user2)
user2.follow(user3)

puts "Feed de notícias de user1:"
user1.news_feed.each { |post| puts "#{post.user.username}: #{post.content}" }
