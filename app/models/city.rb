class City < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
	has_many :posts, dependent: :destroy
	has_many :users, through: :posts
end
