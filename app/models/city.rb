class City < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
	has_many :posts
	has_many :users, through: :posts
end
