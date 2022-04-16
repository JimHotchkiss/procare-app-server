Rails.application.routes.draw do
  resources :sub_sub_sections
  resources :sub_sections
  resources :sections
  resources :instructions
  resources :cycle_times
  resources :takt_times
  resources :repairs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
