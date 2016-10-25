class User < ApplicationRecord
  validates :email, presence: true
  has_secure_password
  
  has_many :posts
  belongs_to :city

end
