Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "home#index"

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :courses
  resources :transactions
  resources :feedbacks, only: [:create]

  resources :users, param: :id

  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
