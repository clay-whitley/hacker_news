class User < ActiveRecord::Base
  include BCrypt
  has_many :posts
  has_many :comments

  validates :username, :password_hash, presence: true
  validates :username, uniqueness: true

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    
    
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end