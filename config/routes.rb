Rails.application.routes.draw do
	resources :cities do
		resources :posts
	end

  root to: "cities#index"

end
