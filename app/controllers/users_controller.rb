class UsersController < ApplicationController
  def show
  	cities = current_user.cities.select(:name, :id).distinct
  	@cities_and_post_quantity = []
  	cities.each do |city|
  		cityname = city[:name]
  		posts = Post.where("user_id = #{current_user.id} and city_id = #{city.id}").all
  		@cities_and_post_quantity << ({ name: cityname, post_num: posts.length })
  	end
  end
end
