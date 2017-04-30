class CitiesController < ApplicationController
  def index
  	@cities = City.all
  	@page = "city_index"
  end

  def show
  	@city = City.friendly.find(params[:id])
  	@posts = @city.posts.paginate(:page => params[:page], :per_page => 10)
  	@page = "city_show"
  	@order = params[:order]
  end
end
