Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users
  get 'users/:id' => 'users#show'

  resources :ingredients
  resources :users

  resources :recipes do
    resources :recipe_attachments
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
