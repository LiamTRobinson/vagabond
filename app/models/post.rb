class Post < ApplicationRecord
	belongs_to :city
	belongs_to :user
	has_many :comments
	has_many :plan_items
	validates :title, length: { within: 1..200}
  	validates :content, presence: true
end
