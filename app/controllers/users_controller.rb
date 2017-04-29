class UsersController < ApplicationController
	before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
  	cities = @user.cities.select(:name, :id).distinct
  	@cities_and_post_quantity = []
  	cities.each do |city|
  		cityname = city[:name]
  		posts = Post.where("user_id = #{@user.id} and city_id = #{city.id}").all
  		@cities_and_post_quantity << ({ name: cityname, post_num: posts.length })
  	end
    avatar_info = HTTParty.get("http://www.avatarapi.com/avatar.asmx/GetProfile?email=#{@user.email}&username=nomadvice&password=nomadvice")
    @user_name = avatar_info["profile"]["Name"]
    @user_photo = avatar_info["profile"]["Image"]
  end
end
