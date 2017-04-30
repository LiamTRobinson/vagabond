Rails.application.routes.draw do

	devise_for :users

	resources :cities do
		resources :posts
	end

	post "posts/:post_id/plan_items/create/:page/:order" => "plan_items#create", as: "plan_items_create"
	delete "posts/:post_id/plan_items/destroy/:page/:order" => "plan_items#destroy", as: "plan_items_destroy"

	get "posts/:post_id/comments/new" => "comments#new", as: "comments_new"
	post "posts/:post_id/comments" => "comments#create", as: "comments_create"

	get 'users/:id' => "users#show", as: "user_show"

	root to: "cities#index"

end
