class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	before_create :find_user_info

  	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  	has_many :posts
  	has_many :cities, through: :posts
  	has_many :comments
  	has_many :plan_items

  	private
  		def find_user_info
  			avatar_info = HTTParty.get("http://www.avatarapi.com/avatar.asmx/GetProfile?email=#{self.email}&username=nomadvice&password=nomadvice")
  			binding.pry
  			user_name = avatar_info["profile"]["Name"]
  			user_photo = avatar_info["profile"]["Image"]
  			if (!user_name.nil?)
  				self.user_name = user_name
  			end
  			if (user_photo.nil?)
  				self.profile_picture_url = "https://nz.junkfreejune.org/themes/base/production/images/default-profile.png"
  			else
  				self.profile_picture_url = user_photo
  			end
  		end
end
