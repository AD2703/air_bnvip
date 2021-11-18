Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :houses do
    resources :bookings, only: %i[create show]
  end
  get "dashboard", to: "pages#dashboard"
  get "my_houses", to: "pages#my_houses"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
