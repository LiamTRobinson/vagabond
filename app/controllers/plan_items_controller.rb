class PlanItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    page = params[:page]
  	post = Post.find(params[:post_id])
    order = params[:order]
  	PlanItem.create(
  		user_id: current_user.id,
  		post_id: post.id
  		)
  	if (order == "show")
      redirect_to "/cities/#{post.city.id}/posts/#{post.id}"
    else
      redirect_to "/cities/#{post.city.id}?page=#{page}&order=#{order}##{post.id}"
    end
  end

  def destroy
    page = params[:page]
    post = Post.find(params[:post_id])
    order = params[:order]
    PlanItem.where("user_id = #{current_user.id} and post_id = #{post.id}").first.destroy
    if (order == "show")
      redirect_to "/cities/#{post.city.id}/posts/#{post.id}"
    else
  	  redirect_to "/cities/#{post.city.id}?page=#{page}&order=#{order}##{post.id}"
    end
  end

  def update
    plan_item = PlanItem.find(params[:id])
    plan_item.update(done: post_params[:done])
    redirect_to "/users/#{plan_item.user_id}"
  end

  private

  def post_params
    params.require(:plan_item).permit(:done)
  end

end
