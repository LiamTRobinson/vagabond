class CitiesController < ApplicationController
  def index
  	@cities = City.all
  end

  def show
  	@city = City.find(params[:id])
  	@post = @city.posts.order(created_at: :desc)
  	@page = "city_show"
  end
end
