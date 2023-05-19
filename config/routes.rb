# frozen_string_literal: true

Rails.application.routes.draw do
  resources :store_branches
  resources :store_contacts
  resources :stores
  resources :services
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :buildings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
