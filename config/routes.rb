Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users
  get 'users/:id' => 'users#show'
  resources :relationships,       only: [:create, :destroy]

  resources :ingredients

  resources :users do
    member do
      get :following, :followers
    end
  end

  post '/recipes/new' => 'recipes#create'

  resources :recipes do
    resources :recipe_attachments
    resources :recipe_ingredients
    resources :steps
    resources :dishes

    member do
      post 'fork'
      get 'fork'
    end
  end

end
