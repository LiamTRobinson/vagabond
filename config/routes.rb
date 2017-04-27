Rails.application.routes.draw do
  get 'cities/index'

  get 'cities/show'

  root to: "cities#index"
end
