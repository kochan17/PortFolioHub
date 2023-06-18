Rails.application.routes.draw do
  devise_for :users
  
  resources :portfolios, only: [:new, :create, :show]
end
