class PlanItemsController < ApplicationController
  def create
    page = params[:page]
  	post = Post.find(params[:post_id])
    order = params[:order]
  	PlanItem.create(
  		user_id: current_user.id,
  		post_id: post.id
  		)
  	redirect_to "/cities/#{post.city.id}?page=#{page}&order=#{order}##{post.id}"
  end

  def destroy
    page = params[:page]
    post = Post.find(params[:post_id])
    order = params[:order]
    PlanItem.where("user_id = #{current_user.id} and post_id = #{post.id}").first.destroy
  	redirect_to "/cities/#{post.city.id}?page=#{page}&order=#{order}##{post.id}"
  end
end
