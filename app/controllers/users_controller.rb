class UsersController < ApplicationController
  include UserHelper
	before_action :authenticate_user!
  before_action :redirect_unless_admin, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
  	cities = @user.cities.select(:name, :id).distinct
  	@cities_and_post_quantity = []
# We need every city so that a city will show up for user plans
# whether or not they have made posts in it.
    @cities = City.all
# This creates an array of the info we need for displaying
# how many posts a user has made in each city.
  	cities.each do |city|
  		cityname = city[:name]
  		posts = Post.where("user_id = #{@user.id} and city_id = #{city.id}").all
  		@cities_and_post_quantity << ({ name: cityname, post_num: posts.length })
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(is_admin?: post_params[:is_admin])
    redirect_to "/users/#{user.id}"
  end

  private

  def post_params
    params.require(:user).permit(:is_admin)
  end
end
