Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users

  resources :courses
  resources :transactions
  resources :feedbacks, only: [:create]

end
