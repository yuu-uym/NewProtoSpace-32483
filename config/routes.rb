Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: 'prototypes#index'
  resources :users, only: [:show]
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
  resources :comments, only: [:create]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
