class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    city = @post.city_id
    @post.delete
    redirect_to "/cities/#{city}"
  end

  def create
    Post.create(content: post_params[:content], title: post_params[:title], city_id: params[:city_id])
    redirect_to "/cities/#{params[:city_id]}"
  end

  def new
    @post = Post.new
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/cities/#{@post.city.id}/posts/#{@post.id}"
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
