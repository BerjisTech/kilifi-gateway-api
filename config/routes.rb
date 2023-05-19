# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  namespace :api do
    namespace :v1 do
      resources :deliveries
      resources :product_branch_availabilities
      resources :staffs
      resources :roles
      resources :product_images
      resources :product_variants
      resources :products
      resources :store_branches
      resources :store_contacts
      resources :stores
      resources :services
      resources :buildings
      # Other routes for this version of your API
    end
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
