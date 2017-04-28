class PlanItemsController < ApplicationController
  def create
  	post = Post.find(params[:post_id])
  	PlanItem.create(
  		user_id: current_user.id,
  		post_id: post.id
  		)
  	redirect_to "/cities/#{post.city.id}/##{post.id}"
  end

  def destroy
    post = Post.find(params[:post_id])
    PlanItem.where("user_id = #{current_user.id} and post_id = #{post.id}").first.destroy
  	redirect_to "/cities/#{post.city.id}/##{post.id}"
  end
end
