Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :houses do
    resources :bookings, only: %i[create show]
  end
  resources :bookings do
   resources :reviews, only: %i[new create]
  end
  get "dashboard", to: "pages#dashboard"
  get "my_houses", to: "pages#my_houses"
end
