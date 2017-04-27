Rails.application.routes.draw do
  get 'posts/show'

  get 'posts/edit'

  get 'posts/destroy'

  get 'posts/create'

  get 'posts/new'

  get 'posts/update'

  get 'cities/index'

  get 'cities/:id' => "cities#show", as: "city_show"

  root to: "cities#index"
end
