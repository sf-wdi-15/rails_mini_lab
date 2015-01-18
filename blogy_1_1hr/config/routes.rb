Rails.application.routes.draw do

  root to: "sites#index"

  resources :articles

  resources :users, except: [:new]
  get "/sign_up", to: "users#new"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

end
