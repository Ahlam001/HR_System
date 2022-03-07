Rails.application.routes.draw do

  get 'main/index'
  resources :devisions
  resources :targets
  resources :teams
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 root "main#index"
 devise_for :users, :controllers => { :registrations => "users" }
#  resources :users, only: [:show]
#  get 'users/' => 'users#show'
 devise_scope :user do
  get "users/" => "users#index"
end
#  root :to=> "main#index"
end
