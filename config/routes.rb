Rails.application.routes.draw do
  root to: "main#index" 

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "profile_edit", to:"profile#edit"
  patch "profile_edit", to:"profile#update"
end
