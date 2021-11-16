Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bookings, only: %i[create new show index destroy]
  resources :houses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
