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

  def new
    @city = City.new
  end

  def create
    city = City.create(post_params)
    redirect_to "/cities/#{city.friendly_id}?order=newest"
  end

  def destroy
    City.find(params[:id]).destroy
    redirect_to "/"
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    city = City.find(parmams[:id])
    city.update(post_params)
    redirect_to "/cities/#{city.friendly_id}?order=newest"
  end

  private

  def post_params
    params.require(:city).permit(:name, :photo_url)
  end
end
