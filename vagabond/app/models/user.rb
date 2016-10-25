class User < ApplicationRecord

  has_secure_password
  
  has_many :posts
  belongs_to :city

end
