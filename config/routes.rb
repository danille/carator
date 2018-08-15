Rails.application.routes.draw do
  resources :cars
  devise_for :users
  root to: 'home#index'
end
