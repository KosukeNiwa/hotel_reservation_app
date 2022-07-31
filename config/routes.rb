Rails.application.routes.draw do
  resources :rooms
  resources :reservations
  devise_for :users

  post "/reservations/confirm", to: "reservations#confirm"

end