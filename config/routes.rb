Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profile', to: 'pages#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chefs do
    resources :bookings, only: [:new, :create, :show]
    resources :messages, only: [:new, :create, :show]
  end
  resources :bookings, only: [:destroy, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end
end
