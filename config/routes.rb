Rails.application.routes.draw do
  # resources :cycle_times
  # resources :takt_times
  # resources :steps
  # resources :repairs
  # resources :sections
  # resources :instructions
  
  namespace :api do 
    namespace :v1 do 
      resources :steps
      resources :repairs
      resources :sections
      resources :instructions
    end
  end 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
