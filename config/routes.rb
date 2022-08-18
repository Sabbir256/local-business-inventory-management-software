Rails.application.routes.draw do
  root to: "main#index" 

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
end
