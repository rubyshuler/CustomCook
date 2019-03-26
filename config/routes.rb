Rails.application.routes.draw do
  root 'recipes#index'
  get 'hello_world', to: 'hello_world#index'

  # devise_for :users, :path_prefix => 'd'
  devise_for :users
  get 'users/:id' => 'users#show'
  # get '/:username', to: 'users#show', as: :username

  resources :ingredients
  resources :users

  resources :recipes do
    resources :steps
    resources :recipe_ingredients
    resources :dishes

    member do
      post 'fork'
      get 'fork'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
