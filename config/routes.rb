Rails.application.routes.draw do
  
	devise_for :users

	resources :cities do
		resources :posts
	end

	get "posts/:post_id/comments/new" => "comments#new", as: "comments_new"
	post "posts/:post_id/comments" => "comments#create", as: "comments_create"

	get 'users/:id' => "users#show", as: "user_show"

	root to: "cities#index"

end
