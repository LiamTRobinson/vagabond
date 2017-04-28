class Post < ApplicationRecord
	belongs_to :city
	belongs_to :user
	validates :title, length: { within: 1..200}
  	validates :content, presence: true
end
