Rails.application.routes.draw do
  get "/about-us", to: "about#index", as: :about

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#create"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "session#destroy"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#new"
  root to: "main#index"
end
