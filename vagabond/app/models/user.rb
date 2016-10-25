class User < ApplicationRecord
  has_secure_password

  has_many :posts
  belongs_to :city

  validates :email, presence: true
  validates :password, presence: true
end
