Rails.application.routes.draw do
  root "puppies#index"
  resources :puppies
  post "checkout/create", to: "checkout#create"

end
