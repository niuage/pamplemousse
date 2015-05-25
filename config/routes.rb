Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  get 'shop', to: 'shops#show'
end
