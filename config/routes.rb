Rails.application.routes.draw do

  resources :posts

  get 'cities/index'

  get 'cities/:id' => "cities#show", as: "city_show"

  root to: "cities#index"

end
