class Post < ApplicationRecord
	validates :name, presence: true, length: {minimum: 1, maximum: 200}
	validates :content, presence: true
	belongs_to :user
	belongs_to :city
end
