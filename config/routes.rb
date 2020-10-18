Rails.application.routes.draw do
  resources :requests
  resources :trainers
  resources :appointments
  resources :events
  resources :users
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  post "/trainerLogin", to: "trainers#show"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
