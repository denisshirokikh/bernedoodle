Rails.application.routes.draw do
  root "puppies#index"
  resources :puppies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
