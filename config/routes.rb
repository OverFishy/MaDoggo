Rails.application.routes.draw do
  root to: 'pages#home'
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :dogs, only: %i[new create show]
  
  resources :parks, only: %i[index show] do
    resources :park_visits, only: %i[create]
    
    resources :park_reviews, only: %i[new create]
    
    get 'chat', to: 'park_messages#index'
    
    resources :park_messages, only: :create
  end
  resources :park_visits, only: %i[destroy]
  resource :dashboard, only: [:show]
# Defines the root path route ("/")
# root "articles#index"
end
