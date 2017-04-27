Rails.application.routes.draw do
  get 'posts/show'

  get 'posts/edit'

  get 'posts/destroy'

  get 'posts/create'

  get 'posts/new'

  get 'posts/update'

  get 'cities/index'

  get 'cities/show'

  root to: "cities#index"
end
