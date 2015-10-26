Rails.application.routes.draw do
  root 'home#index'

  resources :articles, only: [:index, :create, :update, :delete]
end
