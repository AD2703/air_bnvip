Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :houses
  resources :bookings, only: %i[create new show index destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reviews, only: [:create, :destroy]
end
