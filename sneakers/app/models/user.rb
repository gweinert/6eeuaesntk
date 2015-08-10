class User < ActiveRecord::Base

  # has_secure_password

  has_many :shoes

  validates :username, length: { in: 6..20 }
  validates :email, presence: true
  # validates :password, :length => {in: 5..10}, :allow_nil => true
end
