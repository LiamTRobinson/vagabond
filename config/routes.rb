Rails.application.routes.draw do
  

  devise_for :users
	resources :cities do
		resources :posts
	end

	get 'users/:id' => "users#show", as: "user_show"

  root to: "cities#index"

end
