class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
  end

  def create
  end

  def new
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to '/posts/' + params[:id]
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
