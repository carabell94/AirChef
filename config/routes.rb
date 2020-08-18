Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chefs do
    resources :bookings, only: [:new, :create]
    resources :messages, only: [:new, :create, :show]
  end
  resources :bookings, only: [:destroy]
end
