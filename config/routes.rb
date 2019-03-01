Rails.application.routes.draw do
  root 'recipes#index'
  # get 'users/show'
  get '/:username', to: 'users#show', as: :username

  devise_for :users

  resources :steps
  resources :dishes
  resources :ingredients
  resources :recipe_ingredients
  resources :users

  resources :recipes do
    member do
      post 'fork'
      get 'fork'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# get '/:username',      to: 'users#show', as: 'user_by_username'
# get '/:username/edit', to: 'users#edit', as: 'edit_user_by_username'
