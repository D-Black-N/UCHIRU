Rails.application.routes.draw do

  resources :user, only: [:index, :create, :edit, :update, :destroy]
  resources :post, only: [:new, :index, :create, :edit, :update, :destroy]
  resources :session, only: [:index, :create, :destroy]

  root to: 'post#index'

  get 'task/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
