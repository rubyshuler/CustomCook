Rails.application.routes.draw do
  devise_for :users
  root 'recipes#index'
  resources :steps
  resources :dishes
  resources :ingredients
  resources :recipe_ingredients
  resources :recipes do
    member do
      post 'fork'
      get 'fork'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
