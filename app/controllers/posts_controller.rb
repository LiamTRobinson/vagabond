class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :destroy, :create, :new, :update]
  def show
    @post = Post.find(params[:id])
    @city = @post.city
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    city = @post.city.slug
    @post.delete
    redirect_to "/cities/#{city}?order=newest"
  end

  def create
    @post = Post.create(content: post_params[:content],
      title: post_params[:title],
      city_id: City.friendly.find(params[:city_id]).id,
      user_id: current_user.id
      )
    check_validation(@post)
    # redirect_to "/cities/#{params[:city_id]}"
  end

  def new
    @post = Post.new
    @city = City.friendly.find(params[:city_id])
    @page = "new_post"
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/cities/#{@post.city.friendly_id}/posts/#{@post.id}"
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def check_validation(post)
    if post.errors.any?
      error_object = post.errors.messages.keys.first.to_s
      error_message = post.errors.messages.values.first[0].to_s
      flash[:errors] = error_object.capitalize + ' ' + error_message + '. Please correct and resubmit.'
      redirect_to :back
    else
      friendly_id = City.friendly.find(params[:city_id]).slug
      redirect_to "/cities/#{friendly_id}?order=newest"
    end
  end

end
