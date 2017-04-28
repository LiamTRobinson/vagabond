class CommentsController < ApplicationController
  before_action :authenticate_user!
  def new
  	@post = Post.find(params[:post_id])
  	@comment = Comment.new
  end

  def create
  	post = Post.find(params[:post_id])
  	Comment.create(
  		user_id: current_user.id,
  		post_id: post.id,
  		content: params.require(:comment).permit(:content)[:content]
  		)
  	redirect_to "/cities/#{post.city.friendly_id}/posts/#{post.id}"
  end
end
