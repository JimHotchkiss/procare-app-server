Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :instructions 
      resources :sections
    end
  end 
  # resources :instructions
  # resources :sub_sub_sections
  # resources :sub_sections
  # resources :sections
  # resources :cycle_times
  # resources :takt_times
  # resources :repairs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
