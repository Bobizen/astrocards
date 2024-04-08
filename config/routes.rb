Rails.application.routes.draw do

  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
  devise_for :users
  root to: "pages#home"
  get '/privacy', to: 'pages#privacy_statement', as: 'privacy_statement'
  get '/profile', to: 'users#profile', as: 'profile'
  get '/home', to: 'users#home', as: 'afterloginhp'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'usergalleries/ranking', to: 'usergalleries#ranking', as: 'ranking'
  get 'usercards/bonus', to: 'usercards#bonuscard', as: 'usercards_bonus'
  # get 'usercards/detail', to: 'usercards#detail', as: 'usercards_detail'
  get 'usercards/detail/:usercard_id', to: 'usercards#detail', as: 'usercards_detail'

  resources :usercards, only: [:index]
  resources :usergalleries, only: [:index, :create, :show] do
    resources :usergallerycards, only: [:new, :create]
  end



end
