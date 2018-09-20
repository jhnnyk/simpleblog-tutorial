Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions, only: [:create]
  resources :users
  resources :posts
  
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'
  get 'dev' => 'pages#dev', as: 'dev'
  get 'nolans-14' => 'posts#show', id: 8, as: 'nolans-14'
end
