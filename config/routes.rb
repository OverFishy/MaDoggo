Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :dogs, only: %i[new create show]
  resources :parks, only: %i[index show] do
    resources :park_visits, only: %i[create]
  end
  resources :park_visits, only: %i[destroy]
  resource :dashboard, only: [:show]
  # Defines the root path route ("/")
  # root "articles#index"
end
